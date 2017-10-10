//ques-35.11
//Calculating force constant of CO molecule
clc
f=2140;//fundamental frequency (in /cm)
C=1.99*10^-26;//atomic mass of C (in kg)
O=2.66*10^-26;//atomic mass of O (in kg)
r_m=(C*O)/(C+O);//reduced mass
k=4*(%pi*3*10^10*f)^2*r_m;
printf("The force constant of CO molecule is %.0f N/m.",k);
