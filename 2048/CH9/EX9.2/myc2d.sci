// Discretization of continuous transfer function. The result is numerator and denominator in powers of z^{-1} and the delay term k.
// 9.2
// function [B,A,k] = myc2d(G,Ts)
// Produces numerator and denominator of discrete transfer 
// function in powers of z^{-1}
// G is continuous transfer function; time delays are not allowed
// Ts is the sampling time, all in consistent time units

function [B,A,k] = myc2d(G,Ts)
H = ss2tf(dscr(G,Ts));
num1 = coeff(H('num'));
den1 = coeff(H('den'));//-------------
A = den1(length(den1):-1:1);
num2 = num1(length(num1):-1:1);  //flip
nonzero = find(num1); 
first_nz = nonzero(1);
B = num2(first_nz:length(num2)); //-------------
k = length(den1) - length(num1);
endfunction

