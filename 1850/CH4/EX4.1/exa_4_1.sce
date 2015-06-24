// Exa 4.1
clc;
clear;
close;
// Given data
Vin= 0.5;// in V
Av= 10;
I_B_max= 1.5;// in micro amp
I_B_max=I_B_max*10^-6;// in A
// Let
I1=100*I_B_max;// in A
R1= Vin/I1;// in ohm
Rf= Av*R1;// in ohm
// R2= R1 || Rf = R1 (approx.)
R2= R1;// in ohm
disp(I1*10^6,"Value of I1 in micro amp");
disp(R1*10^-3,"Value of R1 in kohm");
disp(R2*10^-3,"Value of R2 in kohm");
disp(Rf*10^-3,"Value of Rf in kohm");

