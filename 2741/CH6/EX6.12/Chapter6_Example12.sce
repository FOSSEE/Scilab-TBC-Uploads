clc
clear
//Input data 
T1=300;//The higher temperature of the reservoir in K 
T2=260;//The lower temperature of the reservoir in K 
H2=500;//The amount of heat from the reservoir at the lower temperature in calories 

//Calculations 
H1=(T1/T2)*H2;//The amount of heat rejected to the reservoir at the higher temperature in calories 
W=(H1-H2)*4.2;//The amount of work done in each cycle to operate the refrigerator in joules

//Output
printf('The amount of heat rejected to the reservoir at the higher temperature is H1 = %3.2f cal \n The amount of work done in each cycle to operate the refrigerator is W = %3.2f joules ',H1,W)
