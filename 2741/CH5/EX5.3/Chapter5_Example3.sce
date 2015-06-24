clc
clear
//Input data 
h=50;//The height from which water falls in metres 
m=100;//Let us assume the mass of the water in gms 
g=980;//Gravitational constant in gms/s^2 
J=4.2*10^7;//The mechanical equivalent of heat in ergs/calorie 

//Calculations 
h1=h*100;//The height from which water falls in cm 
W=m*g*h1;//The work done in ergs 
t=W/(J*m);//The rise in temperature of water in degree centigrade 

//Output 
printf('The rise in temperature of water is t = %3.3f degree centigrade ',t)
