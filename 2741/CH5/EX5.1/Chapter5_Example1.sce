clc
clear
//Input data 
v=480;//The velocity of a lead bullet in m/s 
Sp=0.03;//Specific heat of lead cal/g-K 

//Calculations 
m=10;//Let us assume the mass of bullet in gms 
V=v*100;//The velocity of the bullet in cm/s 
W=(1/2)*m*(V^2);//The work done in ergs 
J=4.2*10^7;//The mechanical equivalent of heat in ergs/calorie 
H=W/J;//The amount of heat produced in cals 
H1=H/2;//Half of the heat energy is used to raise the temperature of the bullet in cals 
t=H1/(m*Sp);//The rise in the temperature in degree centigrade 

//Output 
printf('The rise in the temperature is t = %3.2f degree centigrade ',t)
