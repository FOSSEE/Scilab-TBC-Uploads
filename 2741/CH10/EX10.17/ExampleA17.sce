clc
clear
//Page number 478
m=10;//The given amount of water in kg 
t1=100;//The temperature of water in degree centigrade 
L=540;//The latent heat of vapourisation of steam in cal

//Calculations
m1=m*1000;//The given amount of water in g 
T1=t1+273;//The temperature of water in K 
S=(m1*L)/T1;//The increase in entropy in cal/K

//Output
printf('The increase in entropy is %3.0f cal/K ',S)
