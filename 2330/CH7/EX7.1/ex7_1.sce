// Example 7.1
format('v',6)
clc;
clear;
close;
// given data
V_CC= 10;// in V
R_E= 430;// in Ω
V_BE= 0.7;//in V
V_B= 5;//in V
// The collector saturation current,
I_Csat= V_CC/R_E;// in A
// The collector emitter voltage,
V_CEcutoff= V_CC;// in V
// The collector current,
I_C= (V_B-V_BE)/R_E;// in A
// The collector emitter voltage,
V_CE= V_CC-(V_B-V_BE);// in V
I_C= I_C*10^3;// in mA
disp("Q-point is : "+string(V_CE)+" V, "+string(I_C)+" mA");
disp("DC load line shown in figure")
I_C= I_C*10^-3;// in A
V_CE= 0:0.1:V_CEcutoff;// in V
I_C= (V_CC-V_CE)/R_E*10^3;// in mA
// The plot of DC load line
plot(V_CE,I_C);
xlabel("V_CE in volts");
ylabel("I_C in mA");
title("DC load line")
