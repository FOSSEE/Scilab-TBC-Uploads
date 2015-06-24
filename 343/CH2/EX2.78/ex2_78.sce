clc
C=200*10^-6;         //Assigning values to parameters
V=230;
R=20;
L=0.2;
temp=(1/(L*C))-(R^2/L^2);
fr=(1/20*%pi)*sqrt(temp);
Zr=L/(C*R);
Ir=V/Zr;
Zl=sqrt(R^2+(2*%pi*fr*L)^2);
Il=V/Zl;
Xc=1/(2*%pi*fr*C);
Ic=V/Xc;
phi=atan(2*%pi*fr*L/R);
disp("Hertz",fr,"Resonant frequency");