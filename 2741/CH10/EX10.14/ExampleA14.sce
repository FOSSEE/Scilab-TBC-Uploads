clc
clear
//Page number 476
//Input data 
H1=10^4;//The heat absorbed by a carnots engine in calories 
t1=627;//The temperature from a reservoir in degree centigrade 
t2=27;//The temperature of the sink in degree centigrade 

//Calculations 
T1=t1+273;//The temperature of the reservoir in K 
T2=t2+273;//The temperature of the sink in K 
n=(1-(T2/T1))*100;//The efficiency of the engine in percent 
H2=H1*(T2/T1);//The heat rejected to the sink in calories 
W=(H1-H2)*4.2;//The work done by the engine in J 

//Output 
printf('The efficiency of the engine is n = %3.2f percent \n The work done by the engine is W = %3.2g J ',n,W)
