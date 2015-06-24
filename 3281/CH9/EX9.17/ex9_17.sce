//Page Number: 497
//Example 9.17
clc;
//Given
n=0.15;
Vdc=100; //V
Idc=200D-3; //A
vd=2D+5; //m/s
L=6D-6; //m

//(i) Maximum CW output power
Pdc=Vdc*Idc;
Pout=n*Pdc;
disp('W',Pout,'Maximum CW power output:');

//(ii) Resonant frequency
f=vd/(2*L);
disp('GHz',f/10^9,'Resonant frequency:');
