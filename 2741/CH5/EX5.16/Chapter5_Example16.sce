clc
clear
//Input data 
T=200;//The given temperature in K 
m=2;//Given mass of Helium in g 
M=4;//Molecular weight of helium in g 
R=8.3*10^7;//The Universal gas constant in ergs/g mol-K 

//Calculations 
E=(m*(3/2)*(R*T)/(M))/10^7;//The energy for 2 g of helium in joules 

//Output 
printf('The total random kinetic energy of 2 g of helium at 200 K is K.E = %3.0f joules',E)
