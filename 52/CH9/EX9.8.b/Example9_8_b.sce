//Example 9.8 (b)
//Program To Determine Quality Factor of Bartlett Method
clear;
clc;
close;
//Data
fr=0.01;//Frequency Resolution
N=2400; //Samples
lb=0.89/fr;
//QUALITY FACTOR CALCULATION
Q=N/lb;
//Display the result in command window
disp(Q,"Quality Factor of Bartlett Method");