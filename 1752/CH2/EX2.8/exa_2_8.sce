//Exa 2.8
clc;
clear;
close;
//given data
k=0.175;// in W/mK
h_infinite=9.3;//  in W/m^2K
T_infinite=30;// in degree C
T_s=70;// in degree C
d=10*10^-3;// in m
r=d/2;
L=1;// in m
rc=k/h_infinite;// in m
CriticalThickness = rc-r;// in meter
CriticalThickness=CriticalThickness*10^3;
disp(CriticalThickness,"Critical thickness in mm");

q1=2*%pi*r*L*h_infinite*(T_s-T_infinite);// in W/m
q2= (T_s-T_infinite)/(log(rc/r)/(2*%pi*k*L)+1/(2*%pi*rc*h_infinite));// in W/m
PerIncHeatDiss= (q2-q1)*100/q1;
disp(PerIncHeatDiss,"Percentage increase in heat dissipation rate in %")
//Also q1=I1^2*R with bare cable
//     q2=I2^2*R with insulated cable
I2_by_I1 = sqrt(q2/q1);
// ( I2-I1 ) / I1 = (I2_by_I1 -1) / 1
// Percentage increase in current carrying capacity
PerIncCurrent = (I2_by_I1 -1) / 1 *100;
disp(floor(PerIncCurrent),"Increase in current carrying capacity in %")
