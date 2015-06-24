clc
clear
//Input data 
v=1;//The volume of a gas in cc
d=13.6;//The density of mercury in g/cm^3 
p2=10^-7;//The pressure in cm of Hg 
g=980;//Gravitational constant in gms/s^2 
p1=76;//The pressure in cm of Hg 
R=8.31*10^7;//The Universal gas constant in ergs/g mol-K 
N=6.023*10^23;//The Avogadro number 
T=273;//The temperature at N.T.P in K 
n1=2.7*10^19;//The number of molecules per cc of gas at N.T.P 
t2=0;//The given temperature in degree centigrade 
t3=39;//The given temperature in degree centigrade 

//Calculations 
P1=p1*g*d;//The given pressure in dynes/cm^2 
P2=p2*g*d;//The given pressure in dynes/cm^2
n2=n1*(P2/P1);//The number of molecules per cc of the gas at 0 degree centigrade 
T2=t2+273;//The given temperature in K
T3=t3+273;//The given temperature in K 
n3=n2*(T2/T3);//The number of molecules per cc of the gas at 398 degree centigrade 

//Output 
printf('The number of molecules per cc of the gas , \n (1)at 0 degree centigrade and 10^-6 mm pressure of mercury is n2 = %3.4g \n (2)at 39 degree centigrade and 10^-6 mm pressure of mercury is n3 = %3.4g',n2,n3)

