//Example 2.12(b)

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

A=A1/A2;

dT=100;

d2=alpha*dT;

vO1num=A*Vref*d2;

vO1den=1+(R1/R0)+((1+(R0/R1))*(1+d2));

vO1=vO1num/vO1den;

vO2num=A*Vref*d2;

vO2den=(2+(R1/R0)+(R0/R1));

vO2=vO2num/vO2den;

vOchange=vO2-vO1;

printf("vO(100 deg Celsius)=%.3f V",vO1);

Tchange=vOchange/s;

printf("\nEquivalent Temperature Error=%.2f deg Celsius",Tchange);