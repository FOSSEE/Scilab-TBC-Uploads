// Example 7.8
clc;
clear;
close;
// Given data
format('v',6);
R1= 2*10^3;// in Ω
R2= 2/3*10^3;// in Ω
R3= 200*10^3;// in Ω
C= 0.1*10^-6;// in F
Af= R3/(2*R1);// gain
disp(Af,"The value of Af is : ")
// R1= Q/(2*%pi*f_C*C*Af)                    (i)
// R2= Q/(2*%pi*f_C*C*(2*Q^2-Af))   (ii)
// R3= Q/(%pi*f_C*C)                              (iii)
Q= sqrt((R3/(2*R2)+Af)/2);// from (ii) and (iii)
disp(Q,"The value of Q is : ");
f_C= Q/(R3*%pi*C);// in Hz  (from (iii))
disp(f_C,"The value of f_C in Hz is : ");
omega_0= 2*%pi*f_C;// in radians/second
disp(omega_0,"The value of omega_0 in radians/seconds is : ")


