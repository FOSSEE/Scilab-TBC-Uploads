//example 9.4
clc;funcprot(0);
//Initialization of Variable
I1=1.8;//current
R=16;//resistance
I2=5.7;//A
V=28.8;//Voltage
//calculation
P=I1^2*R;
S=I2*V;
Pf=P/S;
disp(Pf,"power factor:")
clear()
