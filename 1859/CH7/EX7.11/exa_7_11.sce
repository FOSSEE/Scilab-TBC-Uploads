// Exa 7.11
clc;
clear;
close;
// Given data
format('v',9);
R2= 5;// in ohm
R3= 2000;// in ohm
R4= 2950;// in ohm
C2= 0.5;// in miu F
C2=C2*10^-6;// in F
r2=0.4;// in  ohm
f=450;// in Hz
omega= 2*%pi*f;
// Under Balace Condition Z1*Z4=Z2*Z3
// [r1+1/(j*omega*C1)]*R4= [r2+R2+1/(j*omega*C2)]*R3
// Equating the real parts we have, r1*R4= (r2+R2)*R3
r1= (r2+R2)*R3/R4;// in ohm
disp(r1,"Value of r1 in ohm")
// Equating imaginary parts we have R4/(j*omega*C1)= R3/(j*omega*C2)
C1= R4/R3*C2;// in F
disp(C1*10^6,"Value of C1 in micro F");
Tan_toh= omega*C1*r1;
disp(Tan_toh,"Dissipation Factor is")
