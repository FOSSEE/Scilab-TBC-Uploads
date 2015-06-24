//Exa 5.4
clc;
clear;
close;
//Given data
h1 = 246.6;// in kJ/kg
h2 = 198.55;// in kJ/kg
W = 0;
g= 9.8;
Q= -(105000);// in kJ per hr
// m * (h1 + ((v1*^2)/(2*1000)) + ((g * z1)/1000)) + Q =  m * (h2 + ((v2^2)/(2*1000)) + ((g * z2)/1000)) + W
// v1 and v2 is change in velocity is neglected and z2 = z1 + 10
m = Q/( (h2-h1) + ((g * 10)/1000) );// kg per hr
disp(m,"Quantity of  water circulated through the pipe in kg/hr is");
