clc
clear
//Input data 
t=27;//The given temperature in degree centigrade 
d=13.6;//The density of mercury in g/cm^3 
g=980;//Gravitational constant in gms/s^2 
m1=16;//number of oxygen molecules 
D=0.000089;//The density of hydrogen at N.T.P in g/cc 
T=273;//The temperature at N.T.P in K

//Calculations 
P=76*g*d;//The pressure in dynes/cm^2 
p=m1*D;//The density of oxygen at N.T.P in g/cc 
C=((3*P)/(p))^(1/2);//The RMS velocity of oxygen molecule in cm/s 
T1=t+T;//The given temperature in K 
C1=C*(T1/T)^(1/2);//The RMS velocity of the molecules at 27 degree centigrade in cm/s 

//Output 
printf('The RMS velocity of the oxygen molecules at 27 degree centigrade is C1 = %3.4g cm/s ',C1)
