clc
clear
//Input data 
l=30;//The length of the bar in cm 
A=5;//The uniform area of cross section of a bar in cm^2 
ta=200;//The temperature maintained at the end A in degree centigrade 
tc=0;//The temperature maintained at the end C in degree centigrade 
Kc=0.9;//The thermal conductivity of copper 
Ki=0.12;//The thermal conductivity of iron 

//Calculations 
T=((Kc*A*ta)+(Ki*A*tc))/((Kc+Ki)*A);//The temperature after the steady state is reached in degree centigrade 
Q=(Kc*A*(ta-T))/(l/2);//The rate of flow of heat along the bar when the steady state is reached in cal/sec 

//Output 
printf('The rate of flow of heat along the bar when the steady state is reached is Q = %3.2f cal/s ',Q)
