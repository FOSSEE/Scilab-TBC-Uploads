clc 
clear 
//Input data 
S=2.3;//Solar constant in cal/cm^2/minute 
r=7*10^10;//The radius of the sun in cm 
R=1.5*10^13;//The distance between the sun and the earth in cm 
s=1.37*10^-12;//Stefans constant in cal/cm^2/s 

//Calculations 
E=(S/60)*(R/r)^(2);//The energy radiated from the sun in cal/s 
T=(E/s)^(1/4);//The black body temperature of the sun in K 

//Output 
printf('The black body temperature of the sun is T = %3.0f K ',T)
