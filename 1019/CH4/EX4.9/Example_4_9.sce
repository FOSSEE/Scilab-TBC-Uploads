//Example 4.9
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
Cp=20.9; //specific heat capacity at constant pressure of the gas in J K^-1 mol^-1
n=1;//moles of gas
delSm=146;//molar entropy of the gas at 298 K in J K^-1 mol^-1
T1=298; //initial temperature in K
T2=500;//final temperature in K

//to calculate the molar entropy at 500 K
delS=delSm+(Cp*log(T2/T1));//molar entropy in J K^-1 mol^-1
mprintf('Molar Entropy at 500K = %f J K^-1 mol^-1',delS);
//end