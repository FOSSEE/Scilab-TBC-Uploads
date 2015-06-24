clc
clear
//Input data 
l=80;//The latent heat of ice in calories per gram 
V1=1.091;//The specific volume of 1 gram of ice at 0 degree centigrade in cm^3 
V2=1.000;//The specific volume of 1 gram of water at 0 degree centigrade in cm^3 
p=1;//The pressure in atm 
T=273;//The temperature at 0 degree centigrade in K 

//Calculations 
L=80*4.2*10^7;//The latent heat of ice in ergs 
P=76*13.6*980;//The pressure in dynes/cm^2
T=(P*T*(V2-V1))/L;//The depression in the melting point of ice produced by one atmosphere increase of pressure in K 
T1=-T;//The decrease in the melting point of ice with an increase in pressure of one atmosphere 

//Output 
printf('The decrease in the melting point of ice with an increase, \n in pressure of one atmosphere is %3.4f K  (or) %3.4f degree centigrade ',T1,T1)
