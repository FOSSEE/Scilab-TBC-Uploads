clc
clear
//Input data 
d1=1.75;//The thickness of the wood in cm 
d2=3;//The thickness of the cork in cm 
t2=0;//The temperature of the inner surface of the cork in degree centigrade 
t1=12;//The temperature of the outer surface of the wood in degree centigrade 
K1=0.0006;//The thermal conductivity of wood 
K2=0.00012;//The thermal conductivity of cork 

//Calculations 
T=(((K1*t1)/d1)+((K2*t2)/d2))/((K1/d1)+(K2/d2));//The temperature of the interface in degree centigrade 

//Output 
printf('The temperature of the interface is T = %3.2f degree centigrade ',T)
