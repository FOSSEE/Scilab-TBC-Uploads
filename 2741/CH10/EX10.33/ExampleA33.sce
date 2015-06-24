clc
clear
//Page number 485
//Input data 
n=5;//The molecules of ozone in grams 
t=27;//The temperature of ozone in degree centigrade 
R=8.3;//The universal gas constant in J/g-mol/K 

//Calculations 
T=t+273;//The temperature of ozone in K 
U=n*((3/2)*R*T);//The energy of ozone in J 

//Output
printf('The energy of 5 gms molecules of ozone at 27 degree centigrade is  %3.6g J ',U)

