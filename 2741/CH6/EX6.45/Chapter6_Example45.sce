clc
clear
//Input data 
t=100;//The temperature of saturated steam in degree centigrade 
L1=545.25;//The latent heat of saturated steam at 90 degree centigrade in cal
L2=539.30;//The latent heat of saturated steam at 100 degree centigrade in cal
L3=533.17;//The latent heat of saturated steam at 110 degree centigrade in cal
C1=1.013;//The specific heat of water at 100 degree centigrade in cal/g 

//Calculations 
T=t+273;//The temperature of saturated steam in K 
L=(L3-L1)/(110-90);//The rate at which the latent heat of saturated steam decreases with rise in temperature in cal/K 
C2=C1+L-(L2/T);//The specific heat of saturated steam at 100 degree centigrade in cal/g 

//Output 
printf('The specific heat of saturated steam at 100 degree centigrade is  %3.3f cal/g',C2)

