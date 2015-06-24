clc
clear
//Page number 487
//Input data 
t1=100;//The temperature of the source in degree centigrade 
t2=0;//The temperature of the sink in degree centigrade 
P=100;//The power of the engine in watts (or) J/s 
l=80;//The latent heat of ice in cal/g

//Calculations 
T1=t1+273;//The temperature of the source in K 
T2=t2+273;//The temperature of the sink in K 
L=l*4.2*10^3;//The latent heat of ice in ergs/kg 
W=P*60;//The amount of work done in one minute in J 
H2=(W*T2)/(T1-T2);//The amount of heat at the sink in J 
m=(H2/L);//The amount of ice melts in kg 

//Output 
printf('The amount of ice that will melt in one minute is  %3.5f kg ',m)

