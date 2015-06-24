clc
clear
//Page number 489
//Input data 
t1=20;//The temperature of the air in the cylinder of a combustion engine in degree centigrade 
p1=1;//The initial pressure of the air in atmospheres 
V1=8*10^-4;//The initial volume of the air in m^3 
V2=6*10^-5;//The final volume of the air in m^3 
g=1.4;//The adiabatic index 

//Calculations 
T1=t1+273;//The temperature of the air in K 
p2=p1*(V1/V2)^(g);//The final pressure of the gas in atmospheres 
T2=(p2/p1)*(V2/V1)*T1;//The final temperature of the gas in K 
T21=T2-273;//The final temperature of the gas in degree centigrade 

//Output 
printf('The final pressure of the gas is  %3.1f atmospheres \n The final temperature of the gas is  %3.1f K  (or) %3.1f degree centigrade ',p2,T2,T21)

