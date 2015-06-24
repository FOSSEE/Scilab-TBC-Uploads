clc
clear
//Input data 
e=0.35;//The relative emittance of tungsten  
A=10^-3;//The surface area of a tungsten sphere in m^2
T1=300;//The temperature of the walls in K 
T2=3000;//The temperature to be maintained by the sphere in K 
s=5.672*10^-8;//Stefans constant in M.K.S units 

//Calculations 
R=s*A*e*(T2^4-T1^4);//The power input required to maintain the sphere at 3000 K in watts 

//Output 
printf('The power input required to maintain the sphere at 3000 K is R = %3.0f watts',R)
