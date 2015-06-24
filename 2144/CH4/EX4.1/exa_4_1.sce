// Example 4.1
clc;
clear;
close;
// Given data
Q=  1000;// in kJ
T1= 1000;// in K
T2= 400;// in K
delta_Qsource= -Q/T1;// in kJ/K
delta_Qsystem= Q/T2;// in kJ/K
delta_Qnet=delta_Qsystem+delta_Qsource;// in kJ/K
disp(delta_Qnet,"The entropy production accompanying the heat transfer in kJ/K is : ")
T0= 300;// in K
Q1= Q-T0*abs(delta_Qsource);// in kJ
Q2= Q-T0*abs(delta_Qsystem);// in kJ
LossOfEnergy= Q1-Q2;// in kJ
disp(LossOfEnergy,"The decrease in available energy after heat transfer in kJ is : ")
