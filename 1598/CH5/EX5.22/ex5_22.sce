clc;
P=10^4;  //power in Watts
V=250;  //voltage in Volts
R=0.2;  //resistance in ohm
Pl=((P/V)*(P/V))*R;  //calculating power loss
disp(Pl)
E=P/(Pl+P);  //calculating efficiency
disp(E*100,"Percent Efficiency = ");  //displaying result