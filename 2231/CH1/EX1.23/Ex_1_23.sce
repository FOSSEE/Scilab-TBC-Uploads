//Example 1_23
clc;
clear;close;

//Given data: 
P=30;//W
T1=125;//degreeC
T2=50;//degreeC
theta=1;//degree C/W
theta_mica=0.3;//degree C/W
Rth_total=(T1-T2)/P;//degree C/W
Rth_heat_sink=Rth_total-theta-theta_mica;//degree C/W
disp(Rth_heat_sink,"Thermal resistance of heat sink in degree C/W ");
