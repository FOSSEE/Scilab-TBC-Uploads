clc
clear
//Page number 497
//Input data 
L=80;//The latent heat of fusion of ice in cal/gm
Li=3.3*10^5;//Specific latent heat of ice fusion in Jkg^-1
dp=1;//The increase in pressure in atmospheres 
t=0;//The given temperature in degree centigrade 
v=-0.1;//The change in specific volume in cm^3/gm

//Calculations 
dP=0.76*13.6*10^3*9.8;//The increase in pressure in N/m^2 
V=v*10^-3;//The change in specific volume in m^3/kg 
T=t+273;//The given temperature in K 
dT=-(dP*T*(V))/Li;//The decrease in the melting point of ice with increase in the pressure of one atmosphere in K 

//Output
printf('The decrease in melting point of ice is  %3.4f K  (or) %3.4f degree centigrade ',dT,dT)


