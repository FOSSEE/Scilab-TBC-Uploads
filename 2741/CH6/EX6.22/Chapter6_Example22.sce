clc
clear
//Input data 
t=100;//The boiling point of water in degree centigrade 
p1=1;//Initial pressure in atm 
p2=1.10;//Final pressure in atm 
l=537;//Latent heat of water at 100 degree centigrade in cal/g 
V1=1;//The specific volume of one gram of water in cm^3 
V2=1676;//The specific volume of one gram of steam in cm^3 

//Calculations 
p=p2-p1;//The change in pressure in atm 
P=p*76*13.6*980;//The change in pressure in dynes/cm^2 
T=t+273;//The boiling point of water in K 
L=l*4.2*10^7;//The latent heat of water at 100 degree centigrade in ergs/g 
T1=(P*T*(V2-V1))/L;//The change in boiling point of water in K (or) degree centigrade 

//Output
printf('The increase in the boiling point of water with an increase,\n of 0.1 atmosphere pressure is %3.3f K  (or)  %3.3f degree centigrade ',T1,T1)
