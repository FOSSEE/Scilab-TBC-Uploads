clc
V=230;         //Assigning values to parameters
f=50;
L=0.08;
Xl=2*%pi*f*L;
C=200*10^-6;
Xc=1/(2*%pi*f*C);
Z1=20+%i*25.13;
Z2=10-%i*15.92;
Y1=1/Z1;
Y2=1/Z2;
Y=Y1+Y2;
I=V*Y;
[r,t]=polar(I);
pf=cos(t);
Z=1/Y;
R=real(Z);
Xc=-1*imag(Z);
C=1/(2*%pi*f*Xc);
disp("Amperes",I,polar(I),"Supply Current");
disp(pf,polar(pf),"Power factor");
disp("Ohms",Z,polar(Z),"Total impedance");
disp("Ohms",R,"Resistance of eequivalent series circuit");
disp("Farads",C,"Capacitance of eequivalent series circuit");