clc
clear
//Input data 
v=8;//The speed of the earths first satellite in km/s 
R=8.3*10^7;//The Universal gas constant in ergs/g mol-K 
M=2;//Molecular weight of hydrogen 

//Calculations 
V=v*10^5;//The speed of the earths first satellite in cm/s
T=(M*V^2)/(3*R);//The temperature at which it becomes equal in K 

//Output 
printf('The temperature at which the r.m.s velocity of a hydrogen molecule \n will be equal to the speed of earths first satellite is T = %3.4g K',T)
