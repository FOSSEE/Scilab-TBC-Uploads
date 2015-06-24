clc
clear
//Input data 
T=300;//The given temperature in K 
M=32;//Molecular weight of oxygen 
R=8.3*10^7;//The Universal gas constant in ergs/g mol-K 

//Calculations 
E=(3/2)*R*T;//Total random kinetic energy of 1 g molecule of oxygen in ergs 
v=((E)*(2/M))^(1/2);//The required speed of one gram molecule of oxygen in cm/s 

//Output
printf('The required speed of one gram molecule of oxygen is v = %3.2g cm/s ',v)
