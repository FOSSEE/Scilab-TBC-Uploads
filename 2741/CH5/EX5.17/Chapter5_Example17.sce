clc
clear
//Input data 
T=300;//The given temperature in K 
R=8.3*10^7;//The Universal gas constant in ergs/g mol-K 
M=221;//The molecular weight of mercury 

//Calculations 
C=((3*R*T)/(M))^(1/2);//The root mean square velocity of a molecule of mercury vapour at 300 K in cm/s 

//Output
printf('The root mean square velocity of a molecule of mercury vapour at 300 K is C = %3.4g cm/s ',C)
