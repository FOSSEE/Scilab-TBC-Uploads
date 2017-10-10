//Example 6.10
clear;
clc;

//Given
Et=3.716;//transitioal energy in J
T=298;//temperature in K
Ht=6.193;//transitional enthalpy in J
R=8.314;//gas constant in J mol^-1 K^-1
Cp=20.785;//transitional heat capacity in J K^-1 mol^-1
h=6.626*10^(34);//plancks constant in Js
NA=6.023*10^(23);//Avogadro number
k=1.38*(10^(-23));//in J K^-1
P=101325;//Pressure in N m^-2
m=5.313*10^-26;//mass of one molecule of O2 in kg

//To calculate the transitional entropy,work function,and free energy for oxygen gas
qt=7.906*10^6;//the transitional partion function
St=R*(2.5+log(qt));//transitional entropy in J K^-1 mol^-1
Gt=-R*T*log(qt);//transitional free energy in J mol^-1
mprintf('the transitional entropy = %f J K^-1 mol^-1',St);
mprintf('\n the transitional free energy = %f J mol^-1',Gt);
//end