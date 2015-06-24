clc
clear
//Page number 495
//Input data 
m=3;//The rate at which ice melts in kg/hour 
t=28;//The external temperature in degree centigrade 
Li=3.3*10^5;//Specific latent heat of ice fusion in Jkg^-1
s=4.2*10^3;//The specific heat in Jkg^-1.C

//Calculations 
Q=(m*Li)+(m*s*t);//The heat taken by the ice to melt into water in J 
P=Q/3600;//To prevent melting of ice ,the refrigerator should have the power out in J/s 

//Output 
printf('The minimum power output of the motor is  %3.0f watts ',P)

