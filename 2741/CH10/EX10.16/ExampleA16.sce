clc
clear
//Page number 477 
//Input data 
m1=10;//The mass of water at 60 degree centigrade in g 
m2=30;//The mass of water at 20 degree centigrade in g 
t1=60;//The temperature of 10 g water in degree centigrade 
t2=20;//The temperature of 30 g water in degree centigrade 

//Calculations 
T1=t1+273;//The temperature of 10g water in K 
T2=t2+273;//The temperature of 30g water in K 
T=((m1*T1)+(m2*T2))/(m1+m2);//The final temperature of water in K 
s1=m1*log(T/T1);//The change in entropy of 10g water from 333 to 303 K in cal/K 
s2=m2*log(T/T2);//The change in entropy of 30g water from 293 to 303 K in cal/K 
s=s1+s2;//The total gain in the entropy of the system in cal/K 

//Output
printf('The change in entropy is %3.4f cal/K ',s)
