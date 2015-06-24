clc
clear
//Page number 500
//Input data 
m=12.5*10^-3;//The amount of ice in kg 
li=80;//Latent heat of ice in cal/gram 
l=536;//Latent heat of steam in cal/gram 
si=0.5;//Specific heat of ice in cal/gram-K 
sw=1;//Specific heat of water in cal/gram-K 
T1=-24+273;//The initial temperature of ice in K
T2=0+273;//The final temperature of ice in K 
T3=100+273;//The final temperature of water in K 

//Calculations 
Li=li*10^3*4.2;//The latent heat of ice in J/kg 
Ls=l*10^3*4.2;//The latent heat of water in J/kg 
Si=si*10^3*4.2;//The specific heat of ice in J/kg-K 
Sw=sw*10^3*4.2;//The specific heat of water in J/kg-K 
s1=m*Si*log(T2/T1);//The increase in entropy of ice from 249 K to 273 K in J/K 
s2=(m*Li)/T2;//The increase in entropy from 273 K ice to 273 K water in J/K 
s3=m*Sw*log(T3/T2);//The increase in entropy of water from 273 K to 373 K in J/K 
s4=(m*Ls)/T3;//The increase in entropy from water at 373 K to steam at 373 K in J/K 
S=s1+s2+s3+s4;//The total increase in entropy in J/K 

//Output 
printf('The total increase in entropy is  %3.2f J/K ',S)




