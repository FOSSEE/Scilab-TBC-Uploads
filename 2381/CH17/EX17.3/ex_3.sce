//Example 3 // Amplitude and magnetic field
clc;
clear;
close;
//given data :
S=2;// in cal/cm^2- min
EH=S*4.2*10^4/60;// joule/m^2 sec
mu0=4*%pi*10^-7;
epsilon0=8.85*10^-12;
EbyH=sqrt(mu0/epsilon0);
E=sqrt(EH*EbyH);
H=EH/E;
E0=E*sqrt(2);
H0=H*sqrt(2);
disp(E,"E is ,(V/m)=")
disp(H,"H is ,(Amp-turn/m)=")
disp(E0,"Amplitude of electric fields of radiation,E0(V/m) = ")
disp(H0,"Magnetice field of radition ,H0(Amp-turn/m) = ")
