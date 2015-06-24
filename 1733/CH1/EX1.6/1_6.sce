//1.6
clc;
V=90;
R=25;
t=40*10^-6;
L=0.5;
i=(V/R)*(1-exp(-R*t/L))
iL=40*10^-3;
printf("The circuit current is= %.4f A", i)
disp('Since the circuit current is less than latching current of 40mA so thyristor will not turn ON')
R=V/(iL-i);
printf("R= %.0f Ohm", R)
disp('R should be less than 2743 ohm')