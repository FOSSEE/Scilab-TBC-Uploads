// Exa 5.13
clc;
clear;
close;
format('v',6)
// Given data
V_L = 400;// in V
I_L = 10;// in A
W2= 1;// assumed
W1= 2*W2;
phi= atand(sqrt(3)*(W1-W2)/(W1+W2));
W1= V_L*I_L*cosd(30-phi);// in W
W2= V_L*I_L*cosd(30+phi);// in W
disp(W1,"The reading of first wattmeter in W is : ")
disp(W2,"The reading of second wattmeter in W is : ")


