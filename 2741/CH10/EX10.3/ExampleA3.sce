clc
clear
//Page number 470
//Input data 
t=0;//The given temperature in degree centigrade 
E=5.64*10^-21;//The mean kinetic energy of molecules of hydrogen in J 
R=8.32;//Universal gas constant in J/mole-K 

//Calculations 
T=t+273;//The given temperature in K 
N=(3/2)*(R/E)*(T);//Avogadros number 

//Output 
printf('The Avogadro number is N = %3.4g ',N)
