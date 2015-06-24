clc
L1=0.0191             //Assigning values to parameters
f=50;
Xl1=2*%pi*f*L1;
C=398*10^-6;
Xc=1/(2*%pi*f*C);
L3=0.0318
Xl3=2*%pi*f*L3;
Z1=2+%i*Xl1;
Z2=7-%i*Xc;
Z3=8+%i*Xl3;
Zeq=((Z1*Z2)/(Z1+Z2))+Z3;
disp("Ohms",Zeq,polar(Zeq),"Equivalent Impedance");