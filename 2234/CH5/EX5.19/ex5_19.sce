clc;
P=500;  //power in Watts
V=200;  //voltage in Volts
R=(V^2)/P;  //using P=V^2*R
disp(R,"Resistance in Ohm = ");  //displaying result
V1=160;  //voltage in Volts
P1=(V1^2)/R;  //calculating power
Dp=500-P1;  //drop in heat
D=(Dp*100)/500;  //percentage drop
disp(D,"% Drop in heat production = ");  //displaying result