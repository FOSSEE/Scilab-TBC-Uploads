// Example 4.11
clc;
clear;
close;
// Given data
V_CC= 6;// in V
V_BE= 0.7;// in V
bita= 100;
R_C= 2;// in kΩ
R_C= R_C*10^3;// in Ω
R_B= 530;// in kΩ
R_B= R_B*10^3;// in Ω
R1= 10;// in kΩ
R1= R1*10^3;// in Ω
R2= 5;// in kΩ
R2= R2*10^3;// in Ω
V_CE= 0:0.1:V_CC;// in V
I_C= (V_CC-V_CE)/(R_C)*10^3;// in mA
plot(V_CE,I_C);
xlabel("V_CE in volts");
ylabel("I_C in mA");
title("DC load line");
I_B= (V_CC-V_BE)/R_B;// in A
I_CQ= I_B*bita;// in A
V_CE= V_CC-I_CQ*R_C;// in V
disp("Q-point is : "+string(V_CE)+" V, "+string(I_CQ*10^3)+" mA")
disp("DC load line shown in figure")
