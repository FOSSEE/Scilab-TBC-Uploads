clc
clear
//Page number 493
//Input data 
V1=10^-3;//One litre of monoatomic perfect gas at NTP in m^3 
V2=(V1/2);//The final volume in m^3 
g=1.67;//The adiabatic index 

//Calculations 
W=(1/(g-1))*((1/(V2)^(g-1))-(1/(V1)^(g-1)));//The work done on the gas in J 

//Output 
printf('The work done on the gas is  %3.1f J ',W)

