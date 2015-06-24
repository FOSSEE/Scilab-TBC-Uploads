// Exa 6.8
clc;
clear;
close;
// Given Data
C= 0.1;// in micro F
C=C*10^-6;// in F
R1= 2;// in kohm
R1=R1*10^3;// in ohm
R2= 2/3;// in kohm
R2=R2*10^3;// in ohm
R3= 200;// in kohm
R3=R3*10^3;// in ohm
// R1= Q/(2*%pi*fc*C*Af)           (i)
// R2= Q/(2*%pi*fc*C*(2*Q^2-Af))   (ii)
// R3= Q/(%pi*fc*C)                (iii)
// From (i) and (iii)
Af= R3/(2*R1);
// From (ii) and (iii)
Q= sqrt(1/2*(R3/(2*R2)+Af));
// From (iii)
fc= Q/(R3*%pi*C);// in Hz
omega_o= 2*%pi*fc;// in radians/second
disp(Af,"Gain");
disp(Q,"Value of Q");
disp(omega_o,"Centre frequency in radians/second")
