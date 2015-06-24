//Example 1_25
clc;
clear;close;

//Given data: 
T1=120;//degreeC(Junction Temperature)
T2=35;//degreeC(Ambient Temperature)
P=40;//W
theta_dash=0.8;//degree C/W(junction to heat sink)
theta=(T1-T2)/P;//degree C/W
disp(theta-theta_dash,"Resistance of heat sink in degree C/W");
