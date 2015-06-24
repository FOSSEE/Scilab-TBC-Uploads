clear;
clc;

// Example 1.6
printf('Example 1.6\n\n');
//Page no. 22
// Solution

// using suitable conversion factors inside front cover of book
printf('By analysing dimensionally both sides of equation you can say that both values of 16.2 must have the units of microns(10^-6 m).\n');
printf(' The exponential must be dimensionless so that 0.021 must have the associated units of s^(-1).\n');

m = 39.27 ;//[inches]
um = 10^(-6) ;//[meters]
c1 = 16.2*m*um ;//[inches]
mn = 60 ;//[seconds]
c2 = 0.021*60;//[min^(-1)]
printf('\n New modified expression so that we can put t in minutes and get d in inches is as follows,\n d(in) =  %.2e(1-e^(-%.2f*t(min))) \n',c1,c2);