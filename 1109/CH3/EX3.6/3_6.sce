clear;
clc;
Zo=50*exp(-%i*(%pi/(180/5)));a=0.001;b=%pi/1.8;Vr=0.5*exp(%i*(%pi/(180/30)));
l=100;x=4; //Vr=voltage reflection coefficient
modVr=abs(Vr);
A=modVr*exp(-2*a*(l-x));
Zin=Zo*(1+A)/(1-A);
C=real(Zin);
D=imag(Zin);
printf("Input impedance of transmission line = %f /_ %f ohms",fix(abs(Zin)*100)/100,atan(D,C)*180/%pi);
