clc
clear
//Page number 489
//Input data 
t2=20;//The temperature of room in degree centigrade 
t1=37;//The skin temperature of the boy in degree centigrade 
t=10;//The given time in min 
A=3;//The surface area of the student in m^2 
e=0.9;//The emissivity of the student 

//Calculations 
T2=t2+273;//The temperature of the room in K 
T1=t1+273;//The skin temperature of the boy in K 
t1=t*60;//The given time in sec 
s=5.67*10^-8;//Stefans constant in W/m^2-K^4 
R=e*A*s*(T1^4-T2^4);//Heat loss by the skin in one second in J/s
Q=R*t1;//Total heat loss by the skin in 10 minutes in J 

//Output 
printf('The total heat loss by the skin in 10 minutes is  %3.4g J ',Q)

