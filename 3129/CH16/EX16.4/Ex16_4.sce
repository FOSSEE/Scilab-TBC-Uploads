//Finding the Performance Parameters of a Static Kramer Drive
//Example 16.4(Page No- 709)
clc
clear
//given data
Vl = 460;//V
Vs = 460/sqrt(3);
Va = Vs;
p = 6;
f = 60;//Hz
w = 2*%pi*f;
w_s = 2*(w/p);
w_m = 1050*%pi/30;
s = (w_s-w_m)/w_s;
T_L = 750*(1050/1175)^2
n_m = 0.9;
n_c = 0.4;
R_r = 0.044;
Rs = 0.041;
Xm = 6.1;

// Extra function: - 
// A = p2z(R,Theta) - Convert from polar to rectangular form.
//    R is a matrix containing the magnitudes
//    Theta is a matrix containing the phase angles (in degrees).
function [A] = p2z(R,Theta)
 if argn(2) <> 2 then
    error("incorrect number of arguments.");
 end
 if ~and(size(R) == size(Theta)) then
   error("arguments must be of the same dimension.");
 end
 A = R.*exp(%i*%pi*Theta/180.);
endfunction


// [R, Theta] = z2p(A) - Display polar form of complex matrix.
function [R, Theta] = z2p(A)
 if argn(1) == 1 then
   // Only a single return argument.
     // Display the mag and phase in adjacent columns.
     Theta = zeros(A);
     // Protect against 0 entries
     i = (A <> 0);
     Theta(i) = atan(imag(A(i)),real(A(i)))*180./%pi;
     disp(matrix([abs(A); Theta],size(A,1),2*size(A,2)));
     R = A;
 elseif argn(1) == 2 then
   // With two return arguments, the mag and phase are in stored in
   // separate matrices
   // Protect against 0 entries
   i = (A <> 0);
   Theta = zeros(A);
   Theta(i) = atan(imag(A(i)),real(A(i)))*180./%pi;
   R = abs(A);
 else
   error("invalid number of return arguments");
 end
endfunction

//part(a)
Id = (T_L*w_s)/(2.3394*Va*n_m);
printf('(a)\t The inductor current is %.1f A',Id);

//part(b)
Vd = 2.3394*s*Vs*n_m;
printf('\n (b)\t The dc Voltage is %.1f V',Vd);

//part(c)
alpha = acosd(((w_m/w_s)-1)*(n_m/n_c));
printf('\n (c)\t The delay angle of converter is %.1f degrees',alpha)

//part(d)
P1 = Vd*Id;//power fed back
Po = T_L*w_m;//output power
I_r = sqrt(2/3)*Id*n_m;
P_ru = 3*I_r^2*R_r;
P_su = 3*I_r^2*Rs;
Pi = Po +P_ru + P_su ;
eta = Po/Pi;
printf('\n (d)\t The efficiency is %d%%',eta*100); 

//part(e)
n = 1;
I_r1 = 0.7797*Id*n_m;
Im = Va/Xm;
I_i1 = p2z(104,-24.74);// representing I_i1 in polar form
I_i2_mag = sqrt(2/3)*Id*n_c;//magnitude of I_i2
I_i2 = p2z(I_i2_mag,-alpha);
I_i = I_i1 + I_i2;
PF_angle = atand(imag(I_i)/real(I_i));
PF = cosd(PF_angle);
printf('\n (e)\t The input power factor is %.2f (lagging)',PF); 
//ans in the textbook is approximate


