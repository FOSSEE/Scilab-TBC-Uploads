//1.7
clc;
V=100;
R=20;
t=50*10^-6;
L=0.5;
i=(V/R)*(1-exp(-R*t/L))
iH=50*10^-3;
printf("The circuit current is= %.5f A", i)
disp('Since the circuit current is less than holding current of 50mA so thyristor will turn OFF')
R=V/(iH-i);
printf("Maximum value of R= %.3f Ohm", R)
