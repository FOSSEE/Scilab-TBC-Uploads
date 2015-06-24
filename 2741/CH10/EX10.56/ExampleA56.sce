clc
clear
//Page number 497
//Input data 
dp=100;//The change in mercury pressure in cm of Hg 
v2=1601;//Specific volume of steam in cm^3/gram 
v1=1;//Specific volume of water in cm^3/gram 
l=536;//Latent heat in cal/gram 
t=100;//The temperature of the steam in degree centigrade 

//calculations 
dP=1*13.6*10^3*9.8;//The change in mercury pressure in N/m^2 
V2=v2*10^-3;//Specific volume of steam in m^3/kg 
V1=v1*10^-3;//Specific volume of water in m^3/kg 
L=l*4.2*10^3;//Latent heat in J/kg
T=t+273;//The temperature of the steam in K 
dT=(dP*T*(V2-V1))/L;//The increase in boiling point of water in K or degree centigrade 

//Output 
printf('The increase in boiling point of water is  %3.2f K  (or) %3.2f degree centigrade ',dT,dT)

