clc
r=2;                  //Assigning values to parameters
L=0.01
V=230;
f=50;
C=1/(f*f*4*%pi*%pi*L);
Ir=V/r;
Vc=(V/r)*sqrt(L/C);
disp("Amperes",Ir,"Current across capacitor");
disp("Volts",Vc,"Voltage across the capacitor");