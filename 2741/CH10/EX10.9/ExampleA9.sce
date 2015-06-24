clc
clear
//Page number 473
//Input data 
t=27;//The given temperature in degree centigrade 
R=8.3;//Universal gas constant in J/deg mole

//Calculations 
T=t+273;//The given temperature in K 
v1=1;//Let the original volume be in cc 
v2=2*v1;//The final volume in cc 
W=R*T*log(v2/v1);//The work done in J 

//Output
printf('The work done is W = %3.1f J ',W)
