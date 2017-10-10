//Example 4.7
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
Cp=23.7; //specific heat capacity at constant pressure of the gas in J K^-1 mol^-1
n=3;//moles of gas
T1=300; //initial temperature in K
T2=1000;//final temperature in K

//to calculate the entropy
delS=n*Cp*log(T2/T1);//entropy in J K^-1
mprintf('Change in Entropy of the system = %f J K^-1',delS);
//end