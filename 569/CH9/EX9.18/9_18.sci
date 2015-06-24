// calculate the output voltage of bridge
clc;
dP=(7000*10^3)-(100*10^3);
b=25*10^-12;
R1=100;
dR=R1*b*dP;
ei=5;
deo=dR*ei/(4*R1)
disp(deo,'output voltage of bridge(V)')