// Example 8.9
clc;
clear;
close;
// Given data
format('v',7);
// Part (c)
R1= 150;// in Ω
R2= 68*10^3;// in Ω
Vin= 50*10^-3;// in V
Vsat= 14;// in V
Vpositive= Vsat*(R1/(R1+R2));// in V
V_UT= Vpositive;// in V
V_LT= Vpositive;// in V
disp(V_UT,"The value of V_UT in volts is : ")
disp(V_LT,"The value of V_LT in volts is : ")
