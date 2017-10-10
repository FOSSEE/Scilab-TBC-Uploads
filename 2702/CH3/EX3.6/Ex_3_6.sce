// Exa 3.6
clc;
clear;
close;
// Given data 
V_CC= 12;// in V
V_BE= 0.7;// in V
bita= 100;
R_C= 10;// in kΩ
R_C= R_C*10^3;// in Ω
R_B= 100;// in kΩ
R_B= R_B*10^3;// in Ω
I_BQ= (V_CC-V_BE)/((1+bita)*R_C+R_B);// in A
I_CQ= bita*I_BQ;// in A
V_CEQ= V_CC-(I_CQ+I_BQ)*R_C;// in volt
// For dc load line
// When
I_C=0;
V_CE= V_CC-(I_C+I_BQ)*R_C;// in volt
// When
V_CE= 0;
I_C= (V_CC-I_BQ*R_C)/R_C;//in A
disp("Q- point values for circuit is "+string(V_CEQ)+" V and "+string(I_CQ*10^3)+" mA")

