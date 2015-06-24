clc
clear
//Input data 
l=537;//Latent heat of steam in cal/g 
V2=1674;//The specific volume of one gram of steam in cm^3 
V1=1.000;//The specific volume of one gram of water in cm^3 
p=2.712;//The increase in the pressure in cm of Hg 
t=100;//The boiling point of water in degree centigrade 

//Calculations 
T=t+273;//The boiling point of water in K 
P=p*13.6*980;//The increase in the pressure in dynes/cm^2 
L=l*4.2*10^7;//Latent heat of steam in ergs 
T1=(P*T*(V2-V1))/L;//The change in the temperature of the boiling water when the pressure is increased in K

//Output
printf('The change in temperature of boiling water is %3.0f K  (or)  %3.0f degree centigrade ',T1,T1)
