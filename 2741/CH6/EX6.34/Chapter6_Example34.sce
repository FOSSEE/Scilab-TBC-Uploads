clc
clear
//Input data 
m1=50;//Mass of water at 15 degree centigrade in g 
m2=80;//Mass of water at 40 degree centigrade in g 
t1=15;//The temperature of water in degree centigrade 
t2=40;//The temperature of water in degree centigrade 

//Calculations 
T1=t1+273;//Temperature of water in K 
T2=t2+273;//Tempearture of water in K 
s=1;//The specific heat of water 
T=((m2*s*T2)+(m1*s*T1))/((m1+m2)*s);//The final temperature of the mixture in K 
S1=(m1*s*log(T/T1));//The change in entropy by 50 g of water when its temperature rises from 288 K to 303.4 K in cal/K 
S2=(m2*s*log(T/T2));//The change in entropy by 80 g of water when its temperature falls from 313 K to 303.4 K in cal/K 
S3=S1+S2;//The total gain in the entropy of the system in cal/K 

//Output
printf('The net increase in the entropy of the system is  %3.3f cal/K ',S3)
