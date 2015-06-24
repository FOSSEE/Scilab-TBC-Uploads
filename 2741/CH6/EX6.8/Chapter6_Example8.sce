clc
clear
//Input data 
t1=100;//The temperature at steam point in degree centigrade 
t2=0;//The temperature at ice point in degree centigrade 

//Calculations 
T1=t1+273;//The temperature at steam point in K 
T2=t2+273;//The temperature at ice point in K 
n=(1-(T2/T1))*100;//The efficiency of the carnots engine in percent 

//Output 
printf('The efficiency of the Carnot engine is %3.2f percent ',n)
