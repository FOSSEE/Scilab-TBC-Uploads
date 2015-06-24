// Exa 3.9
format('v',7);
clc;
clear;
close;
// Given data 
R1= 10;// in kΩ
R1=R1*10^3;// in Ω
R2= 5;// in kΩ
R2=R2*10^3;// in Ω
RC= 1;// in kΩ
RC=RC*10^3;// in Ω
RE= 2;// in kΩ
RE=RE*10^3;// in Ω
V_CC= 15;// in V
V_BE= 0.7;// in V
// When
I_C=0;
V_CE= V_CC-I_C*(RC+RE);// in V
// When V_CE= 0
I_C= V_CC/(RC+RE);// in A
V_B= V_CC*R2/(R1+R2);// in V
I_E= (V_B-V_BE)/RE;// in A
I_C= I_E;// in A (approx)
I_CQ= I_C;// in A
V_CE= V_CC-I_C*(RC+RE);// in V
V_CEQ= V_CE;// in V
V_CE= 0:0.1:15;// in Volt
I_C= (V_CC-V_CE)/(RC+RE)*1000;// in mA
plot(V_CE,I_C);
title("DC load line")
xlabel("V_CE in volts")
ylabel("I_C in mA")
disp("DC load line shown in figure")
disp("Operating point is "+string(V_CEQ)+" V and "+string(I_CQ*10^3)+" mA")
