clc
clear
//Input data 
t1=127;//The temperature at initial point in degree centigrade 
t2=27;//The temperature at final point in degree centigrade 

//Calculations 
T1=t1+273;//The temperature at initial point in K 
T2=t2+273;//The temperature at final point in K 
n=(1-(T2/T1))*100;//The efficiency of the carnots engine in percent 

//Output 
printf('The efficiency of the Carnot engine is %3.0f percent ',n)
