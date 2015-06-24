clc
clear
//Input data 
t2=7;//The lower temperature of the reservoir in degree centigrade 
n=50;//The efficiency of the carnot engine in percent 
n1=70;//It is desired to increase the efficiency in percent 

//Calculations 
T2=t2+273;//The lower temperature of the reservoir in K 
T1=T2/(1-(n/100));//The higher temperature of the reservoir for 50% efficiency of the engine in K 
T11=T2/(1-(n1/100));//The higher temperature of the reservoir for 70% efficiency of the engine in K
T=T11-T1;//Increase in temperature for the change in efficiencies in K 

//Output
printf('The temperature of the high temperature reservoir should be increased by %3.0f K ',T)
