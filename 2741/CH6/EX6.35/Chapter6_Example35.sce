clc
clear
//Input data 
m1=10;//Mass of steam in g 
t1=100;//The temperature of the steam in degree centigrade 
m=90;//mass of water in g 
t2=0;//The temperature of water in degree centigrade 
m2=m+m1;//The total mass of water in g 
l=540;//The latent heat of steam in cal/g

//Calculations 
T1=t1+273;//The temperature of the steam in K 
T2=t2+273;//The temperature of the water in K 
T=((m1*l)+(m1*T1)+(m2*T2))/(m1+m2);//The final temperature in K 
S1=m2*log(T/T2);//The change in entropy when the temperature of water and calorimeter rises from 273 K to 331.2 K in cal/K 
S2=-(m1*l)/T1;//The change in entropy when 10 grams of steam at 373 K condenses to water at 373K in cal/K 
S3=m1*log(T/T1);//Change in entropy when 10 g of water at 373 K is cooled to water at 331.2 K in cal/K 
S4=S1+S2+S3;//Net change in entropy in cal/K 

//Output
printf('The net increase in the entropy of the system is  %3.3f cal/K ',S4)

