clc
clear
//Input data 
p1=1;//The atmospheric pressure in atm 
p2=100;//The given pressure in atm 
d1=0.917;//The density of ice in g/cm^3 
l=336;//The latent heat of ice in j/g 

//Calculations 
p=p2-p1;//The change in pressure in atms 
P=p*76*13.6*980;//The change in pressure in dynes/cm^2 
L=l*10^7;//The latent heat of ice in ergs/g 
T=273;//The temperature of melting point of ice in K 
V2=1;//The specific volume of one gram of water in cm^3 
V1=1/d1;//The specific volume of ice in cm^3 
T1=(T*P*(V2-V1))/L;//The change in the melting point of ice in K
T2=-T1;//The decrease in the melting point of ice in K (or) degree centigrade 

//Output
printf('The decrease in the melting point of ice,\n with a pressure of 100 atmospheres is %3.4f degree centigrade ',T2)
