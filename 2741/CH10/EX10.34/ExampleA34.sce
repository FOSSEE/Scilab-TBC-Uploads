clc
clear
//Page number 485
//Input data 
t=-1;//The pressure required to lower the melting point of ice in K 
l=79.6;//The latent heat of ice in cal/g
V1=1;//The specific volumes of water at 0 degree centigrade in cm^2 
V2=1.091;//The specific volumes of ice at 0 degree centigrade in cm^2 
p=1.013*10^6;//One atmospheric pressure in dyne/cm^2

//Calculations 
T=273;//The temperature of water in K 
L=l*4.18*10^7;//The latent heat of ice in ergs/g 
p1=(L*t)/(T*(V1-V2));//The obtained pressure in dynes/cm^2 
P=p1/p;//The obtained pressure in atmospheres 
P1=P+1;//The required pressure in atmospheres 

//Output 
printf('The pressure required is  %3.2f atmospheres ',P1)

