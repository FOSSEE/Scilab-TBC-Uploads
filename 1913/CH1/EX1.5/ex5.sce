clc 
clear
//Input data
v1=1;//Initial volume in m^3
v2=3;//Final volume in m^3

//Calculations
W=10^5*(((v2^3-v1^3)/3)+8*(log(v2/v1)));//Work done in J

//Output
printf('The work done W= %3.1f J',W)
