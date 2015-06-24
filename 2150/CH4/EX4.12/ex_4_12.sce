// Example 4.12
clc;
clear;
close;
// Given data
V_CC= 12;// in V
V_BE= 0.7;// in V
bita= 100;
R_C= 10;// in kΩ
R_C=R_C*10^3;// in Ω
R_B= 100;// in Ω
R_B=R_B*10^3;// in Ω
I_BQ= (V_CC-V_BE)/((1+bita)*R_C+R_B);// in A
I_CQ= bita*I_BQ;// in A
V_CEQ= V_CC-(I_CQ+I_BQ)*R_C;// in volts
disp("Q-Point value for the circuit is "+string(V_CEQ)+" V and "+string(I_CQ*10^3)+" mA")
// For dc load line when 
I_C=0;
V_CE= V_CC-(I_C+I_BQ)*R_C;// in V
disp(V_CE,"At I_C=0, the value of V_CE in volts is : ")
// When
V_CE= 0;
I_C= (V_CC-I_BQ*R_C)/R_C;// in A
disp(I_C*10^3,"At V_CE=0, the value of I_C in mA is : ")
