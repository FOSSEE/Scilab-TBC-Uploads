clc
clear
//Page number 496
//Input data 
Li=3.3*10^5;//Specific latent heat of ice fusion in Jkg^-1
V1=1.090*10^-3;//The specific volume of one kg of ice in m^3 
V2=10^-3;//The specific volume of one kg of water in m^3 
T=273;//The temperature maintained in K 
dP=1.01*10^5;//The increase in pressure in N/m^2 

//Calculations 
dT=-(dP*T*(V2-V1))/Li;//The depression in the melting point of ice in K (or) degree centigrade 

//Output 
printf('The depression of melting point of ice is  %3.2g K  (or) %3.2g degree centigrade ',dT,dT)


