// Example 3.18
clc;
clear;
close;
// Given data
format('v',6);
R1= 540;// in Ω
R3= 540;// in Ω
R2= 5.4*10^3;// in Ω
Rf= 5.4*10^3;// in Ω
Vin1= -2.5;// in V
Vin2= -3.5;//in V
Rin= 2*10^6;//input impedance in Ω
A= 2*10^5;// open loop voltage gain
Ad= (1+Rf/R1);// voltage gain
disp(Ad,"The voltage gain is : ");
Vout=Ad*(Vin1-Vin2);// output voltage in V
disp(Vout,"The output voltage in volts is : ");
Rin_f1= Rin*(1+A*R1/(R1+Rf));// in Ω
Rin_f2= Rin*(1+A*R2/(R1+Rf));// in Ω
format('e',10);
disp(Rin_f1,"The value of Rin_f1 in Ω is : ")
disp(Rin_f2,"The value of Rin_f2 in Ω is : ")



