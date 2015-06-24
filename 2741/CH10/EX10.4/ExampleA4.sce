clc
clear
//Page number 471
//Input data 
d=2*10^-8;//The diameter of the molecule of a gas in cm 
k=1.38*10^-23;//Boltzmanns constant in J/K 
T=273;//The temperature at NTP in K 
pi=3.14;//The mathematical constant of pi 

//Calculations 
d1=d/100;//The diameter of the molecule of a gas in m 
P=0.76*13.6*9.8*1000;//The pressure at NTP 
n=P/(k*T);//The number of molecules per cubic meter 
l=1/(pi*d1^2*n);//The mean free path in m 

//Output
printf('The mean free path at NTP is %3.4g m ',l)
