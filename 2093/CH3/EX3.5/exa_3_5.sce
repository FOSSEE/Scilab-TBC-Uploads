// Exa 3.5
clc;
clear;
close;
// Given data 
V_CC= 6;// in V
bita= 100;
R_C= 2;// in kΩ
R_C= R_C*10^3;// in Ω
R_B= 530;// in kΩ
R_B= R_B*10^3;// in Ω
// when I_C=0
I_C=0;
V_CE= V_CC-I_C*R_C;// in volt
V_CE= 0:0.1:6;// in Volt
I_C= (V_CC-V_CE)/R_C*1000;// in mA
plot(V_CE,I_C);
title("DC load line")
xlabel("V_CE in volts")
ylabel("I_C in mA")
disp("DC load line shown in figure")
// When V_CE= 0
I_C= V_CC/R_C;//in A
// Operating point for silicon transistor 
V_BE= 0.7;// in V
I_B= (V_CC-V_BE)/R_B;//in A
I_CQ= bita*I_B;// in A
V_CEQ= V_CC-I_CQ*R_C;// in volt
disp("Operating point is "+string(V_CEQ)+" V and "+string(I_CQ*10^3)+" mA")
