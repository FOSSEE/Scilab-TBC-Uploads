// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 5")
T1=(25+273.15);//temperature of inside of house in K
T2=(-1+273.15);//outside temperature in K
Q1=125;//heating load in MJ/Hr
disp("COP_HP=Q1/W=Q1/(Q1-Q2)=1/(1-(Q2/Q1))")
disp("also we know K=Q1/Q2=T1/T2")
disp("so K=T1/T2")
K=T1/T2
disp("so COP_HP=1/(1-(Q2/Q1)=1/(1-(1/K))")
COP_HP=1/(1-(1/K))
disp("also COP_HP=Q1/W")
disp("W=Q1/COP_HP in MJ/Hr")
W=Q1/COP_HP
disp("or W=1000*W/3600 in KW")
W=1000*W/3600
disp("so minimum power required(W)in KW ")
W
