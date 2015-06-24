clc
clear
//Input data 
t=100;//The given temperature of water in degree centigrade 
C1=1.01;//The specific heat of water at 100 degree centigrade in cal/g
L=-0.64;//The rate at which the latent heat of vapourisation decreases with rise in temperature in cal/K 
l=540;//The latent heat of vapourisation of steam in cal 

//Calculations 
T=t+273;//The given temperature of water in K 
C2=L-(l/T)+C1;//The specific heat of saturated steam in cal/g 

//Output
printf('The specific heat of satureted steam is  %3.3f cal/g \n (The specific heat of saturated steam is negative)',C2)
