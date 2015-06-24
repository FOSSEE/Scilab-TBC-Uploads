//Example 2.12(a)

clear;

clc;

R0=100;//Data taken from Example 2.11

alpha=0.00392;//Data taken from Example 2.11

Vref=15;

Prtd=0.2*10^(-3);

i=(Prtd/R0)^(0.5)-(0.41*10^(-3));

R1=(Vref/i);

delta=alpha*1;//Fractional Deviation for 1 degree celsius change in temperature

s=0.1;//Output Voltage for 1 degree Celsius temperature change

A1=s*(2+(R1/R0)+(R0/R1));

A2=Vref*delta;

A=(A1/A2)+1.0555913;

printf("R1=%.f kohms",R1*10^(-3));

printf("\nA=%.1f V/V",A);