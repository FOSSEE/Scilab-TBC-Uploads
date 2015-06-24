clc
clear
//Page number 475
//Input data 
T1=2100;//One of the operating temperature in K 
T2=700;//One of the another operating temperature in K 
n1=40;//The actual efficiency of the engine in percent 

//Calculations 
n=(1-(T2/T1))*100;//The efficiency of the engine in percent 
n2=(n1/n)*100;//The percentage of actual efficiency to the maximum possible efficiency in percent 

//Output
printf('The percentage of actual efficiency to the maximum possible efficiency is %3.0f percent ',n2)
