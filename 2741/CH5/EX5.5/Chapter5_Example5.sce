clc
clear 
//Input data 
t=-100;//The given temperature in degree centigrade 

//Calculations 
T1=t+273;//The given temperature in K 
m1=1;//number of hydrogen molecules 
m2=16;//number of oxygen molecules 
m=m2/m1;//Number of oxygen molecules to the hydrogen molecules 
T2=(T1*m)-273;//The temperature in degree centigrade 

//Output 
printf('The temperature at which the oxygen molecules have the same root mean square velocity \n as that of hydrogen molecules is T2 = %3.0f degree centigrade ',T2)
