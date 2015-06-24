//Exam:6.1
clc;
clear;
close;
h=6.62*10^-34;
c=3*10^8;
e=1.6*10^-19;
Wavelength_1=2300*10^-10;
W=h*c/Wavelength_1;//Work function
Wavelength_2=1800*10^-10;
E_in=h*c/Wavelength_2;
E=E_in-W;//kinetic energy of the ejected electron(in Joules)
E_1=E/e;//kinetic energy of the ejected electron(in eV)
disp(E_1,'kinetic energy of the ejected electron(in eV)=');