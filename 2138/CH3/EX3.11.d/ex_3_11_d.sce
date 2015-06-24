//Example 3.11.d // total resistance
clc;
clear;
close;
t=15;//TOTAL CURRENT IN AMPERES
i1=2;//CURRENT THROUGH UNKNOWN RESISTANCE
R1=15;//in ohms
R2=50/2;//in ohms
x=(t-i1)*((R1*R2)/(R1+2*R2));//unknown resistance in ohms
PD=i1*x;//in volts
RX=((1/R1)+(1/(2*R2))+(1/x));//
R=1/RX;//
disp(R,"total resistance of the circuit in ohms")
