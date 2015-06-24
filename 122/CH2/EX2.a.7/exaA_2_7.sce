// Example A-2-7
// Transfer function to controllable form (state space)

clear; clc;close;mode(0);

s = %s;
Num = 2*s^3 + s^2 + s + 2;   n = coeff(Num);
Den = s^3 + 4*s^2 + 5*s + 2; d = coeff(Den);
for i = 1:4 ;  b(i) = n(5 - i); a(i) = d(5 - i); end

// Method 1
_beta(1) = b(1);
_beta(2) = b(2) - a(2)*_beta(1);
_beta(3) = b(3) - a(2)*_beta(2) - a(3)*_beta(1);
_beta(4) = b(4) - a(2)*_beta(3) - a(3)*_beta(2) - a(4)*_beta(1);

A = [0 1 0; 0 0 1; -d(1:3)]
B = _beta(2:4)
C = [1 0 0 ] 
D = b(1)

// method 2
H2 = cont_frm(Num,Den)
