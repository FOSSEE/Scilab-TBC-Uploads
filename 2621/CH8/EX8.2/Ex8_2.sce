// Example 8.2
clc;
clear;
close;
// Given data
format('v',5);
R1= 5;// in kΩ
R2= 10;// in kΩ
V_peak= R1*R2/(R1+R2);// in V
Vav= V_peak/%pi;// in V
disp("Peak value of V1 is : "+string(V_peak)+" V")
disp("Average value of Vo is : "+string(Vav)+" V")

