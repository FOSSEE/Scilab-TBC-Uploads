clc
clear 
//Input data 
v=1;//The volume of oxygen at N.T.P in cm^3 
d=13.6;//The density of mercury in g/cm^3 
r=4.62*10^4;//The R.M.S velocity of oxygen molecules at 0 degree centigrade in cm/s 
m=52.8*10^-24;//Mass of one molecule of oxygen in g 
g=980;//Gravitational constant in gms/s^2 

//Calculations 
P=76*g*d;//The pressure in dynes/cm^2 
n=((3*P)/(m*r^2));//Number of molecules in 1 cc of oxygen at N.T.P 

//Output 
printf('The number of molecules in 1 c.c of oxygen at N.T.P is n = %3.4g ',n)
