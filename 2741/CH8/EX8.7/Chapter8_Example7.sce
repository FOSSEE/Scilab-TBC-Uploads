clc
clear
//input data 
T1=300;//The temperature maintained on one sphere (black body radiator) in K 
T2=200;//The temperature maintained on another sphere (black body radiator) in K 
s=5.672*10^-8;//Stefans constant in M.K.S units 

//Calculations 
R=s*(T1^4-T2^4);//The net rate of energy transfer between the two spheres in watts/m^2 

//output
printf('The net rate of energy transfer between the two spheres is R = %3.2f watts/m^2',R)
