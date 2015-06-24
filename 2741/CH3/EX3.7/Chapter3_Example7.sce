clc
clear
//Input data
t2=2;//The time taken for the liquid to cool from 50 to 40 degree centigrade in minutes 
t11=50;//The initial temperature of the liquid in degree centigrade 
t12=40;//The final temperature of the liquid in degree centigrade 
t1=5;//The time taken for the water to cool from 50 to 40 degree centigrade in minutes 
m=100;//The mass of water in gms
M=85;//The mass of liquid in gms
w=10;//Water equivalent of the vessel in gms

//Calculations 
C=(((m+w)*(t2*60))/(M*(t1*60)))-(w/M);//The specific heat of a liquid in calories/g-K

//Output
printf('The specific heat of a liquid is C = %3.1f calories/g-K',C)
