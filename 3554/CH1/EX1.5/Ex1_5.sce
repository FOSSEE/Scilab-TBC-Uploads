// Exa 1.5
//Data taken from Exa 1.4 as stated

clc;
clear all;

// Given data

x1= 49.7;
x2= 50.1;
x3= 50.2;
x4= 49.6;
x5= 49.7;
n= 5; // number of x values

// solution

X_mean= (x1+x2+x3+x4+x5)/5; // Arithmatic Mean
d1= x1-X_mean;
d2= x2-X_mean; // deviation from each value
d3= x3-X_mean;
d4=x4-X_mean;
d5=x5-X_mean;

D_av= (abs(d1)+abs(d2)+abs(d3)+abs(d4)+abs(d5))/n;  //Average deviation
printf('The average deviation = %.3f \n',D_av);
