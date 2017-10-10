//Example 6.8
clear;
clc;

//Given
V=24.4;//volume in dm^3
T=298;//temperature in K
P=1;//pressure in atm
R=8.314;//gas constant in J mol^-1 K^-1
h=6.62*10^(-26);//plancks constant in J s
m=5.313*10^(-26);//mass of 1 O2 molecule in kg
k=1.38*(10^(-23));//in J K^-1

//To calculate the transitional partion function
qt=(((2*%pi*m*k*T)^(3/2))*V)/((h^3)*10^9);//the transitional partion function
mprintf('the transitional partion function = %f * 10^30 ',qt);
//end