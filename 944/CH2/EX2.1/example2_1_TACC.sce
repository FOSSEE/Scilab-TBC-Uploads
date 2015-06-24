//example 2.1

clear;
clc;

//Given:
m=25;//weight of water vapour [grams]
w=18;//molecular weight of water vapour [grams/mol]
T=9.69;//increase in temperature [K]
Qp=0.45;//heat supplied at constant pressure[KJ]


//To find the molar constant pressure specific heat
n=m/w;//no. of moles of water vapour
Cp=Qp/(n*T);//specific heat capacity at constant pressure[KJ]
printf("The specific heat capacity at constant pressure = %f KJ/K/mol",Cp)