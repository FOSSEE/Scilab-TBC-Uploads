//Part A Chapter 6 Example 9
clc;
clear;
close;
T1_HE=2000;//K
T2_HE=300;//K
T1=500;//K
T2=300;//K
Q1=integrate('0.05*T^2+0.10*T+0.085','T',T1,T2);//J
deltaS_system=integrate('0.05*T+0.10+0.085/T','T',T1,T2);//J/K
//Putting deltaS_system+deltaS_reservoir>=0
//deltaS_reservoir=(Q1-W)/T2
W=deltaS_system*T2-Q1;//J
disp("Maximum Work = "+string(W/1000)+" kJ");
