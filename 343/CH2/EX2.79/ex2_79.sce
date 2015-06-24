clc
pfcoil=0.3;           //Assigning values to parameters
phi=acos(pfcoil);
V=100;
f=50;
Il=1;
Ic=Il*sin(phi);
Xc=V/Ic;
C=1/(2*%pi*f*Xc);
Ir=Il*cos(phi);
Zr=V/Ir;
disp("Farads",polar(C),"Capacitance");
disp("Ohms",polar(Zr),"Dynamic impedance");