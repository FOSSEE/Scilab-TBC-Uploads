//Calculate impedance and quality factor and bandwidth
clear;
clc;
//soltion
//given

R=10;//ohm
L=150*10^-6;//H
C=100*10^-12;//F
fo=1/(2*%pi*sqrt(L*C));
Zp=L/(C*R);     //impedance
printf("The impedance Z= %.0f kΩ\n",Zp/1000);

Xl=(2*%pi*fo*L);
Q=Xl/R;
BW=fo/Q;
printf("The Quality factor of the circuit =%.1f \n",Q);
printf("The Band width of the circuit =%.1f kHz\n",BW/1000);
