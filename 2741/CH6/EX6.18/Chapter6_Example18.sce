clc
clear
//input data 
p=1;//The pressure in atm 
V1=1.000;//The specific volume of one gram of water in cm^3 
V2=1677;//The specific volume of one gram of steam in cm^3 
l=540;//Latent heat of vaporisation of steam in cal/gram 

//Calculations 
P=76*13.6*980;//The pressure in dynes/cm^2
T=100+273;//The temperature at 100 degree centigrade in K 
L=l*4.2*10^7;//The latent heat of vapourisation in ergs 
T=(P*T*(V2-V1))/L;//The increase in the boiling point of water with an increase in pressure of one atmosphere in degree centigrade

//Output
printf('The increase in the boiling point of water with an increase , \n in pressure of one atmosphere is %3.2f degree centigrade  (or)  %3.2f K ',T,T)
