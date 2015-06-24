clc
clear
//Page number 499
//Input data 
s=4.2*10^3;//The specific heat of water is J/kg.C 
m1=0.1;//The mass of water at 15 degree centigrade in kg 
m2=0.16;//The mass of water at 40 degree centigrade in kg 
t1=15;//The temperature of the first water in degree centigrade 
t2=40;//The temperature of the second water in degree centigrade 

//Calculations 
T1=t1+273;//The temperature of the first water in K
T2=t2+273;//The temperature of the second water in K 
T=((m1*T1)+(m2*T2))/(m1+m2);//The final mixed temperature in K 
s1=m1*s*2.3026*log10(T/T1);//The change in entropy for 0.1 kg of water in J/K 
s2=m2*s*2.3026*log10(T/T2);//The change in entropy for 0.16 kg of water in J/K 
S=s1+s2;//The net change in the entropy of the system in J/K 

//Output 
printf('The net increase in entropy is  %3.2f J/K ',S)

