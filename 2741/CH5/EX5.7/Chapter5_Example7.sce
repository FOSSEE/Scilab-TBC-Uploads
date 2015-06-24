clc
clear
//Input data 
d=13.6;//The density of mercury in g/cm^3 
g=980;//Gravitational constant in gms/s^2 
m=3.2;//Mass of oxygen in gms 
t=27;//The given temperature in degree centigrade 
p=76;//The pressure in cm of Hg 
R=8.31*10^7;//The Universal gas constant in ergs/g mol-K 

//Calculations 
P=p*g*d;//The given pressure in dynes/cm^2 
T=t+273;//The given temperature in K 
V=(T*R)/P;//Volume per g mol of oxygen in cc per g mol
m1=32;//Molecular weight of Oxygen 
V1=V*(m/m1);//Volume of 3.2 g of oxygen in cc 

//Output 
printf('The Volume occupied by 3.2 gms of Oxygen is V = %3.0f cc ',V1)
