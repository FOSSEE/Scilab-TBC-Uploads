clc
clear
//Page number 480
//Input data 
m=1;//The given amount of water in kg 
s=1000;//The specific heat of water in cal/kg-K 
T1=273;//The initial temperature of water in K 
T2=373;//The temperature of the heat reservoir in K 

//Calculations 
S=m*s*log(T2/T1);//The increase in entropy in cal/K 

//Output 
printf('The increase in the entropy of water is %3.0f cal/K',S)
