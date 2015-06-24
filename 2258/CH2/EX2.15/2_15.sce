clc();
clear;
// To calculate the velocity of an electron and proton
Ee=10;   //electron kinetic energy in eV
EeeV=Ee*1.6*10^-19;   //electron kinetic energy in J
Ep=10;   //proton kinetic energy in eV
EpeV=Ep*1.6*10^-19;   //proton kinetic energy in J
me=9.1*10^-31;   //mass of electron in kg
mp=1.67*10^-27;   //mass of proton in kg
cebar=sqrt((2*EeeV)/me);
cpbar=sqrt((2*EpeV)/mp);
printf("velocity of electron in m/s is");
disp(cebar);
printf("velocity of proton in m/s is");
disp(cpbar);

//answers given in the book are wrong
