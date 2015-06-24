clc();
clear;
// To calculate the field strength and total dipole moment
V=15;    //potential difference in volts
C=6;    //capacity in micro farad
C=C*10^-6;    //capacity in farad
epsilon_0=8.84*10^-12;    //f/m
epsilon_r=8;
A=360;     //surface area in cm^2
A=A*10^-4;    //surface area in m^2
E=(V*C)/(epsilon_0*epsilon_r*A);
d=epsilon_0*(epsilon_r-1)*V*A;
printf("field strength in V/m is");
disp(E);
printf("total dipole moment in cm is");
disp(d);

//answer for field strength E given in the book is wrong 
