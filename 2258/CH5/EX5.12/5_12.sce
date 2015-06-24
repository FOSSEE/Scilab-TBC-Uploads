clc();
clear;
// To calculate the EM wave frequency
V=8.50;    //voltage in micro Volts
V=V*10^-6;     //in volts
e=1.6*10^-19;       //electron charge in coulomb
h=6.626*10^-24;
new=2*e*V/h;
printf("EM wave frequency in Hz is");
disp(new);

//answer given in the book is wrong
