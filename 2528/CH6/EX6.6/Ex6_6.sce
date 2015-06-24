//Example6.6:"design an Amplifier "
//Page 197
//figure 6.27
clear;
clc;
Av=-20;
Ri=50000;       //in Ohm
fc=100;     //in Hz
//Av=-Rf/Ri
Rf=-Av*Ri;
disp("Ohm",Rf,"Value of Rf");
Rb=2*Rf;
disp("Ohm",Rb,"Value of Rb");
C=1/(2*%pi*Ri*fc);
disp("F",C,"Value of C");
//Result//
