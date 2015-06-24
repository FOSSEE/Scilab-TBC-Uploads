clc
clear
//Input data 
m=1;//mass of ice in g 
t1=-10;//The given temperature of ice in degree centigrade 
t2=100;//The given temperature of steam in degree centigrade 
S=0.5;//Specific heat of ice 
s=1;//Specific heat of water 
l1=80;//Latent heat of ice in cal/g 
l2=540;//Latent heat of steam in cal/g

//Calculations 
T=273;//The temperature of ice at 0 degree centigrade in K 
T1=t1+273;//The given temperature of ice in K 
T2=t2+273;//The given temperature of steam in K 
S1=m*S*2.3026*log10(T/T1);//Increase in entropy when the temperature of 1 gram of ice increases from -10 to 0 degree centigrade in cal/K 
S2=l1/T;//Increase in entropy when 1 g of ice at 0 degree centigrade is converted into water at 0 degree centigrade in cal/K 
S3=m*s*2.3026*log10(T2/T);//Increase in entropy when 1 g of water raised from 0 to 100 degree centigrade in cal/K 
S4=l2/T2;//Increase in entropy when 1g water at 100 degree centigrade is converted into steam at 100 degree centigrade in cal/K 
S5=S1+S2+S3+S4;//Total increase in entropy in cal/K 

//Output
printf('The total increase in entropy is  %3.5f cal/K',S5)


