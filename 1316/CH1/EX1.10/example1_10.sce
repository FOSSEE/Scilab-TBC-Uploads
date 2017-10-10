//Chapter 1
//Example 1.10
//Page 28

clear;
clc;

Read=27.5;
T_min=4.95;
T_max=5.05;


//Calculation of possible temperature values
printf("The range of Transfer function is 4.95 to 5.05 mV per degree celcius \n The possible temperature values that could be inferred from reading of 27.5 degree celcius are %.2f and %.2f",Read/T_min,Read/T_max);

