clc;
//page 559
//problem 11.4

//Part b

//Voltage level V1 = 1
V1 = 1;

//Voltage level V2 = -1
V2 = -1;

//Prior probability of s1 P_s1 = 0.4
P_s1 = 0.4;

//Prior probability of s2 P_s2 = 1 - P_s1
P_s2 = 1 - P_s1;

//Cost of selecting s1 when s2 is transmitted C12 = 0.7
C12 = 0.7;

//Cost of selecting s2 when s1 is transmitted C21 = 1 - C12
C21 = 1 - C12;

//Noise Variance sigma = 10^-3
sigma = 10^-3;

//Descision Threshold lambda
lambda = (V1+V2)/2 + (sigma)*log((C12*P_s2)/(C21*P_s1))/(V1-V2);

disp('The decision threshold is '+string(lambda)+' V');
