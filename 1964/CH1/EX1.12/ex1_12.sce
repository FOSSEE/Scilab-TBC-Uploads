//Chapter-1, Example 1.12, Page 24
//=============================================================================
clc;
clear;
//INPUT DATA
m=20;//mass of aluminium in kg
S=0.896;//specific heat of aluminium in KJ/Kg degree centigrade
L=402;//latent heat of fusion of aluminium in KJ/Kg 
theta2=657;//final temperature
theta1=20;//initial temperature(assumed)
P=25;//power of furnace in Kw
n=80;//efficiency of kettle in percentage
//CALCULATIONS 
H=m*S*(theta2-theta1)+(m*L);//heat energy required to melt aluminium or energy output from the furnace in Kj
H=H/4.186;//heat energy required to melt aluminium or energy output from the furnace in Kcal
H=H/860;//heat energy required to melt aluminium or energy output from the furnace in KWh
n=n/100;
E=H/n;//electrical energy or input energy to kettle in Kwh
t=E/P;//time taken to melt the aluminium in hr
t=t*60;// time taken to melt the aluminium in min
//OUTPUT
mprintf("Thus the time taken to melt the aluminium is %2.2f min",t);
 

//=================================END OF PROGRAM==============================
