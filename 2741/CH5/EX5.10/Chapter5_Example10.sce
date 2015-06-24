clc
clear
//Input data 
v=1;//The volume of an ideal gas in litre 
d=13.6;//The density of mercury in g/cm^3 
g=980;//Gravitational constant in gms/s^2 
p=76;//The pressure in cm of Hg 
R=8.31*10^7;//The Universal gas constant in ergs/g mol-K 
N=6.023*10^23;//The Avogadro number 
T=273;//The temperature at N.T.P in K 
t=136.5;//The given temperature in degree centigrade 
p1=3;//The given atmospheric pressure in atm pressure

//Calculations 
T1=T+t;//The given temperature in K
P=p*g*d;//The given pressure in dynes/cm^2 
x=(p1*P*N*10^3)/(R*T1);//Number of molecules in one litre volume 

//Output 
printf('The number of molecules in one litre of an ideal gas volume is x = %3.4g ',x)
