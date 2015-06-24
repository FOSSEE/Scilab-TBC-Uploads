//Example 3.11.C // CURRENT IN EACH RESISTANCE
clc;
clear;
close;
t=15;//TOTAL CURRENT IN AMPERES
i1=2;//CURRENT THROUGH UNKNOWN RESISTANCE
R1=15;//in ohms
R2=50/2;//in ohms
x=(t-i1)*((R1*R2)/(R1+2*R2));//unknown resistance in ohms
PD=i1*x;//in volts
i5= PD/(2*R2);//current in 5 ohms resistance
i15=PD/R1;//current in 15 ohms resistance
disp(i5,"current in 5 ohms resistance in ampere")
disp(i15,"current in 15 ohms resistance in ampere")
