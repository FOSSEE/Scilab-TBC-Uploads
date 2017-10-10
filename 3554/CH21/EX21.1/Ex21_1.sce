// Exa 21.1

clc;
clear all;

// Given data
Emax=20; //Max value of variable(mA)
Emin=4;//Min value of variable(mA)
Em=13;//Measured value of variable
Eref=10;//Set(ref) point of variable(mA)

// Solution
//Ep=(Em-Eref)/(Emax-Emin)*100; // Percentage error from page no.(703)
//Therefore
Ep=(Em-Eref)/(Emax-Emin)*100;
printf('The value of Ep = %.2f percent. Since Ep is positive, the measurement is above the set point \n ',Ep);
