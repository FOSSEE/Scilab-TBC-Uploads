// SAMPLE PROBLEM 6/2
clc;clear;funcprot(0);
// Given data
m=150;// kg
M=5;// kN
theta=30;// degree
ACbar=1.5;// m
BDbar=1.5;// m
ABbar=1.8;// m
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
// SigmaM_C=0
A_t=M/ACbar;// kN
// SigmaF_t=m*abar_t
// alpha=14.81-6.54*cos(theta);
wsquare_30=(29.6*theta*%pi/180)-(13.08*sind(theta));// (rad/s)^2
alpha_30=14.81-(6.54*cosd(theta));// rad/s^2
A_n=(m/1000)*ACbar*wsquare_30;// kN
A_t=(m/1000)*BDbar*alpha_30;// kN
// SigmaM_A=m*abar*d
B=((A_n*(ABbar-0.6)*cosd(theta))+(A_t*0.6))/(ABbar*cosd(theta));// kN
printf("\nThe force in the link DB,B=%1.2f kN",B);
