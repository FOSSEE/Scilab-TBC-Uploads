clc
clear
//Input data 
K=0.2;//The thermal conductivity of the plate 
d=0.2;//The thickness of the plate in cm 
A=20;//The area of the plate in cm^2 
T=100;//The temperature difference in degree centigrade 
t=60;//The given time in seconds 

//Calculations 
Q=(K*A*T*t)/d;//The quantity of heat that will flow through the plate in one minute in cal 

//Output
printf('The quantity of heat that will flow through the plate in one minute is Q = %3.4g cal ',Q)

