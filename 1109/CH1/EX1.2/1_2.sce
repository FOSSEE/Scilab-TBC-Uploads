clear;
clc;
Zo=2039.6;f=800; //value of Zo as taken in solution
P=0.054* exp(%i*(%pi/(180/87.9)));
w=2*%pi*f;
Z=Zo*P;
R=real(Z);
printf('-Resistance R = %f ohms/km\n',R);
L=(imag(Z))/w;
printf('-Inductance L = %f mH/km\n',L*(10^3));
Y=P/Zo;
G=real(Y);
printf('-Conductance G = %f micromhos/km\n',G*(10^6));
C=((imag(Y))/w)*(10^6);c=round(C*10000)/10000
printf('-Capacitance C = %f microfarads/km\n',c);
