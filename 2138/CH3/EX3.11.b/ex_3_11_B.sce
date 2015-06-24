//Example 3.11.B // potential drop across the circuit
clc;
clear;
close;
t=15;//TOTAL CURRENT IN AMPERES
i1=2;//CURRENT THROUGH UNKNOWN RESISTANCE
R1=15;//in ohms
R2=50/2;//in ohms
x=(t-i1)*((R1*R2)/(R1+2*R2));//unknown resistance in ohms
PD=i1*x;//in volts
disp(PD,"potential drop across the circuit in volts is")
