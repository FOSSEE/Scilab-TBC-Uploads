clc
clear
//Page number 491
//Input data 
d=2*10^-10;//The molecular diameter of an ideal gas in m 
t=20;//The temperature of the gas in degree centigrade 
p=1;//The pressure of the gas in atmosphere 
pi=3.142;//The mathematical constant of pi 

//Calculations 
T=t+273;//The temperature of the gas in K 
P=1.01*10^5;//The pressure of the gas in N/m^2 
v=511;//The velocity of the molecules at 20 degree centigrade in m/s 
k=1.38*10^-23;//Boltzman constant in J/K 
n=P/(k*T);//The number of molecules per m^3 
l=1/(1.414*pi*d^2*n);//The mean free path in m 
f=v/l;//The collision frequency in per second 

//Output 
printf('(a)The mean free path is  %3.4g m  \n (b)The collision frequency is  %3.4g per second ',l,f)

