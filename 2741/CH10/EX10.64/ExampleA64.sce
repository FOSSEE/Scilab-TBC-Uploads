clc
clear
//Page number 505
//Input data 
T1=200;//The first temperature of the black body in K 
T2=2000;//The second temperature of the black body in K 
s=5.672*10^-8;//Stefans constant in M.K.S units 

//Calculations 
R=(s*T1^4)/(s*T2^4);//The comparision of radiant emittance of a black body for given temperatures 

//Output 
printf('The comparision of radiant emittance of a black body at 200 K and 2000 K is  %3.0g ',R)

