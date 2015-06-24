clc
clear
//Page number 485
//Input data 
t1=127;//The temperature of the black body in degree centigrade 
t2=27;//The temperature of the walls maintained in degree centigrade 
s=5.672*10^-8;//Stefans constant in SI units 

//Calculations 
T1=t1+273;//The temperature of the black body in K 
T2=t2+273;//The temperature of the walls maintained in K 
R=s*(T1^4-T2^4);//The net amount of energy lost by body in W/m^2 

//Output 
printf('The net amount of energy lost by body per sec per unit area is  %3.1f watts/m^2',R)

