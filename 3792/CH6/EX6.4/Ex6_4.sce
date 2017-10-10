// SAMPLE PROBLEM 6/4
clc;funcprot(0);
// Given data
m=7.5;// kg
rbar=250/1000;// m
k_o=295/1000;// m
theta_1=0;// degree
theta_2=60;// degree
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
// SigmaM_o=I_o*alpha;
// alpha=28.2*cos(theta);
wsquare=48.8;// (rad/s)^2
// SigmaF_n=m*rbar*omega^2;
O_n=(m*rbar*wsquare)+(m*g*sind(theta_2));// N
// SigmaF_t=m*rbar*alpha;
O_t=(m*g*cosd(theta_2))-(m*rbar*28.2*cosd(theta_2));// N
O=sqrt(O_n^2+O_t^2);// N
q=k_o^2/(rbar);// The distance in m
// SigmaM_Q=0
O_t=(m*g*cosd(theta_2)*(q-rbar))/q;// N
printf("\nThe total force supported by the bearing,O=%3.1f N \nO_t=%2.2f N",O,O_t);
