clc 
clear 
//Page number 473
//Input data 
p1=80;//The initial pressure of a gas in cm of Hg 
p2=60;//The final pressure of a gas in cm of Hg 
v2=1190;//The final volume occupied by a gas in cc 
v1=1000;//The initial volume occupied by a gas in cc 

//Calculations 
g=(log10(p1/p2))/(log10(v2/v1));//The adiabatic index 

//Output 
printf('The adiabatic index is  %3.3f ',g)
