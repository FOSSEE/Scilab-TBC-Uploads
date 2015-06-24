clc
clear
//Page number 486
//Input data 
t2=7;//The low temperature of reservoir in degree centigrade 
n1=50;//The efficiency of the carnots engine in percentage
n2=70;//The increased efficiency of the carnots engine in percentage

//Calculations 
T2=t2+273;//The low temperature of the reservoir in K 
T1=T2/(1-(n1/100));//The temperature of the source reservoir in K 
T11=T2/(1-(n2/100));//The temperature to be maintained by the source reservoir in K 
T=T11-T1;//The increase in temperature of the source in K or degree centigrade 

//Output 
printf('The increase in temperature of the source is  %3.1f K (or) %3.1f degree centigrade ',T,T)

