//Example 6.14
clear;
clc;

//Given
T=300;//temperature in K
w=4405;//vibrational frequency in cm^-1
h=6.626*10^(34);//plancks constant in Js
k=1.38*(10^(-23));//in J K^-1
c=3*10^8;//speed of light in m s^-2

//To determine the vibrational partition function for hydrogen molecule
qv=(1-exp(-(h*c*w)/(k*T)));//the vibrational partition function for hydrogen molecule
mprintf('the vibrational partition function for hydrogen molecule = %f',qv);
//end