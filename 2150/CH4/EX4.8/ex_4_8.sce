// Example 4.8
clc;
clear;
close;
// Given data
V_CC= 15;// in V
V_BE= 0.7;// in V
R_C= 1;// in kΩ
R_C= R_C*10^3;// in Ω
R_E= 2;// in kΩ
R_E= R_E*10^3;// in Ω
R1= 10;// in kΩ
R1= R1*10^3;// in Ω
R2= 5;// in kΩ
R2= R2*10^3;// in Ω
V_CE= 0:0.1:V_CC
I_C= (V_CC-V_CE)/(R_C+R_E)*10^3;// in mA
plot(V_CE,I_C);
xlabel("V_CE in volts");
ylabel("I_C in mA");
title("DC load line");
V_B= V_CC*R2/(R1+R2);// in V
I_E= (V_B-V_BE)/R_E;// in A
I_C= I_E;// in A
I_CQ= I_C;// in A
V_CE= V_CC-I_C*(R_C+R_E);// in V
disp("Q-point is : "+string(V_CE)+" V, "+string(I_CQ*10^3)+" mA")
disp("DC load line shown in figure")
