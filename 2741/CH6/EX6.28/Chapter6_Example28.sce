clc
clear
//Input data 
t2=120;//The given temperature for the water to boil in degree centigrade 
t1=100;//The actual boiling point of water in degree centigrade 
V=1676;//The change in specific volume in cm^3 
l=540;//Latent heat of steam in cal/g 
J=4.2*10^7;//joule in ergs/cal 

//Calculations 
T1=t2-t1;//The change in temperature in degree centigrade (or) K 
T=t1+273;//The boiling point of water in K 
L=l*J;//The latent heat of steam in ergs/g 
p=1;//The atmospheric pressure in atmospheres 
P=(L*T1)/(T*V);//The change in pressure in dynes/cm^2 
P1=P/10^6;//The change in pressure in atmospheres 
P2=P1+p;//The required pressure in atmospheres 

//Output 
printf('The required pressure is %3.4f atmospheres ',P2)
