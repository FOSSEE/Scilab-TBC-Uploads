//Page Number: 497
//Example 9.18
clc;
//Given
n=0.1;
Vdc=100; //V
Idc=100D-3; //A
vd=2D+5; //m/s
L=5D-6; //m
V0=90; //V
k=3;

//(i) Maximum CW output power
Pdc=Vdc*Idc;
Pout=n*Pdc;
disp('W',Pout,'Maximum CW power output:');

//(ii) Resonant frequency
f=vd/(2*L);
disp('Hz',f,'Resonant frequency:');

//(iii)Transit time
T=L/vd;
disp('s',T,'Transit time:');

//(iv) Avalanche multiplication factor
M=1/(1-((Vdc/V0)^k));
disp(-M,'Avalanche multiplication factor:');

