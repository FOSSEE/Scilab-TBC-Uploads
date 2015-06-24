//example 5.23

clear;
clc;

//Given:
a=1.39*10^-2;//constant for a vanderwaal's gas[lit2.atm/mol2]
b=3.92*10^-2;//constant for a vanderwaal's gas[lit2.atm/mol2]
R=0.082;//Universal gas constant[lit.atm/deg/mol]

//To find the value of the inversion temperature for the gas
Ti=(2*a)/(R*b);//inversion temperature [K]
printf("The inversion temperature for the gas is %f K",Ti);
