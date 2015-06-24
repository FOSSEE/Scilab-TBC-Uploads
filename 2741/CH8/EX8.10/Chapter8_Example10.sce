clc
clear 
//Input data 
e=0.1;//The relative emittance of an aluminium foil 
T1=300;//The temperature of one sphere in K 
T2=200;//The temperature of another sphere in K 
s=5.672*10^-8;//Stefans constant in M.K.S units 

//Calculations 
x=(((T1^4+T2^4)/2)^(1/4));//The temperature of the foil after the steady state is reached in K 
R=e*s*(T1^4-x^4);//The rate of energy transfer between one of the spheres and foil in watts/m^2 

//Output 
printf('(1)The temperature of the foil after the steady state reached is x = %3.1f K \n (2)The rate of energy transfer between the sphere and the foil is R = %3.1f watts/m^2',x,R)
