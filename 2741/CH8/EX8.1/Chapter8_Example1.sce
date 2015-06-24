clc
clear
//Input data 
l1=10;//Length of the copper rod in cm 
l2=4;//Length of the iron rod in cm 
K1=0.9;//The thermal conductivity of copper 

//Calculations 
K2=(l2^2/l1^2)*K1;//The Thermal conductivity of iron 

//Output
printf('The thermal conductivity of iron is K2 = %3.3f ',K2)
