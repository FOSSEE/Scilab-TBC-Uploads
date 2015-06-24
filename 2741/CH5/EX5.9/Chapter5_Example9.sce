clc
clear
//Input data 
v=1;//The volume of an Ideal gas at N.T.P in m^3 
d=13.6;//The density of mercury in g/cm^3 
g=980;//Gravitational constant in gms/s^2 
p=76;//The pressure in cm of Hg 
R=8.31*10^7;//The Universal gas constant in ergs/g mol-K 
N=6.023*10^23;//The Avogadro number 
T=273;//The temperature at N.T.P in K 

//Calculations 
P=p*g*d;//The given pressure in dynes/cm^2 
x=(P*N*10^6)/(R*T);//Number of molecules in one cubic metre volume 

//Output 
printf('The number of molecules in one cubic metre of an ideal gas at N.T.P is x = %3.4g ',x)
