//Section-5,Example-3,Page no.-D.124
//To calculate the number of molecules of HCl produced per joule of radiant energy absorbed
clc;
h=6.626*10^-34
v=3*10^15                       //Frequency
c=3*10^8
lm=c/v
J=1/(1.6*10^-19)                  //Value of 1 Joule in eV
E=((h*c)/lm)*J
disp(E,'Energy of an Einstein in eV')
