// Example 5.2
format('v',6)
clc;
clear;
close;
// given data
V_CC= 30;// in V
R_C= 1.5;//in kΩ
Ver_intercept= V_CC/R_C;//in mA
Hor_intercept= V_CC;// in V
V_CE= 0:0.1:Hor_intercept;// in V
I_C= (V_CC-V_CE)/R_C;// in mA
// DC load line
plot(V_CE,I_C)
xlabel("V_CE in volts");
ylabel("I_C in mA")
title("DC load line")
