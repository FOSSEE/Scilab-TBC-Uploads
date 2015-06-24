//Ex 1.4
clc;clear;close;
format('v',6);
Vo=10;//V(Output voltage)
Vin=30;//V(Input voltage)
R2=100;//ohm
//V2/V=R2/(R1+R2)//Voltage divider rule
R1=(Vin*R2-Vo*R2)/Vo;//ohm
disp(R1,"Resistance of R1(ohm)");
