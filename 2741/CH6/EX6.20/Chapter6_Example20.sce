clc
clear
//Input data 
l=4563;//The latent heat of fusion of naphthalene in cal/mol 
V=18.7;//The increase in volume of fusion in cm^3/mol
p=1;//The pressure in atm 
t=80;//The melting point of naphthalene in degree centigrade 

//Calculations 
L=l*4.2*10^7;//The latent heat of fusion of naphthalene in ergs/mol 
T=t+273;//The melting point of naphthalene in K 
P=76*13.6*980;//The pressure in dynes/cm^2
T1=(P*T*(V))/L;//The increase in the melting point of naphthalene with an increase in pressure of one atmosphere in K 

//Output 
printf('The increase in the melting point of naphthalene with an increase,\n in pressure of one atmosphere is %3.5f K  (or)  %3.5f degree centigrade ',T1,T1)
