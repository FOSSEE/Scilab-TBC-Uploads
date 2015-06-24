//example 7.4 
clc; funcprot(0);
// Initialization of Variable
Vp=.3;//voltage
I=500;//current
D=.42;//duty cycle
T=150;//temperature
R=.6;//ohm
//calculation
Vq=I*R;
disp(Vq/1000,"voltage in V:")
Pq=D*Vq*I;
disp(Pq/1000,"dissipated power in mW:")
clear()
