//example 6.5
clc; funcprot(0);
// Initialization of Variable
C=640;//capacitor
R1=560;//load resistance
R2=3.3;//kohm
//calculation
t1=2.2*R1*C;
disp(t1/1000,"time of rise in ns:")
t2=2.2*R2*C;
disp(t2/1000,"time of rise in microsec:")
clear()
