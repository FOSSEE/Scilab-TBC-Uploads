// Exa 1.6
//Data taken from Eg 1.4 as stated

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

Std_dev= sqrt((d1^2+d2^2+d3^2+d4^2+d5^2)/(n-1));  //Standard deviation 
printf('The standard deviation = %.2f \n',Std_dev);

