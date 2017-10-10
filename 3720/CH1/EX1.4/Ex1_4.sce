// Example 1_4
clc;clear;funcprot(0);
//Properties
g=32.174; // The gravitational constant in ft/s^2

//Given values
m=1; //  Mass in lbm

// Calculation
W=m*g/32.174;// Weight is mass times the local value of gravitational acceleration
printf('The weight of the object in earth,W =%0.2f lbf\n',W);
