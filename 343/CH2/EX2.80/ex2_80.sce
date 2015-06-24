clc
V=200;       //Assigning values to parameters
f=50;
L=20;
R=15;
Zl=sqrt(R^2+L^2);
pfcoil=R/Zl;
phi=acosd(pfcoil);
Il=V/Zl;
Ic=Il*sind(phi);
Xc=V/Ic;
C=1/(2*%pi*f*Xc);
Ir=Il*cosd(phi);
disp(polar(pfcoil),"Power factor");
disp("Amperes",polar(Il),"Current");
disp("Farads",C,"Value f shunting capacitance");
disp("Amperes",polar(Ir),"Circuit current at resonance");