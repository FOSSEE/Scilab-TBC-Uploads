clc
clear
//Input data 
m=1;//Mass of water in g 
t1=20;//The temperature of water in degree centigrade 
t2=-10;//The temperature of ice in degree centigrade 
s1=4.2;//Heat capacity for one gram of water in J/g-K 
s2=2.1;//Heat capacity for ice in J/g-K 
li=335;//Latent heat of fusion of ice at 0 degree centigrade in J/g 

//Calculations 
T=273;//The temperature of water at 0 degree centigrade in K
T1=t1+273;//The temperature of water in K 
T2=t2+273;//The temperature of ice in K 
S1=m*s1*log(T/T1);//Change in entropy when the temperature of 1 g of water at 293 K falls to 273 K in J/K 
S2=-(m*li)/T;//Change in entropy when 1 g of water at 273 K is converted into ice at 273 K in J/K 
S3=m*s2*log(T2/T);//Change in entropy when the temperature of 1 g of ice at 273 K falls to 263 K in J/K 
S4=S1+S2+S3;//The total change in entropy of the system in J/K 

//Output 
printf('The total change in the entropy of the system is  %3.5f J/K \n  (Negative sign indicates that there is decrease in the entropy of the system)',S4)
