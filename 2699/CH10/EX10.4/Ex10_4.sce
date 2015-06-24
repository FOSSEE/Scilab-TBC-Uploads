//EX10_4 PG-10.35
clc
disp("Refer to the figure-10.32 shown")
//the circuit is an inverting amplifier
R1=10e3;
Rf=47e3;//feedback resistance
A=-Rf/R1;//gain of an inverting amplifier
printf("\n the gain is %.1f (inverting amplifier) \n",A)
