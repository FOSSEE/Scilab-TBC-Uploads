clc
clear
//Input data
l=79.6;//latent heat of ice in cal/g
V2=1;//The specific volume of water at 0 degree centigrade in cm^3
V1=1.091;//The specific volume of ice at 0 degree centigrade in cm^3 
p=1.013*10^6;//One atmospheric pressure in dynes/cm^3
T=-1;//The change in temperature in K 
T1=273;//The temperature of water at 0 degree centigrade in K 
p1=1;//The atmospheric pressure in atm

//Calculations 
L=l*4.18*10^7;//The latent heat of ice in ergs/g 
P=((L*T)/(T1*(V2-V1)*p));//The change in pressure in atmospheres 
P1=P+p1;//The pressure required in atmospheres 

//Output
printf('The pressure required to lower melting point of ice,\n by 1 degree centigrade is  %3.1f atmospheres ',P1)
