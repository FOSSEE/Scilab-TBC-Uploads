clc
clear
//Input data 
t=100;//The temperature at which water boils in degree centigrade 
p2=787;//The pressure at which water boils in mm of Hg 
J=4.2*10^7;//Joule in ergs/cal 
p1=760;//The atmospheric pressure in mm of Hg 
V2=1601;//The specific volume of 1 g of water at 100 degree centigrade in cm^3
V1=1;//The specific volume of 1 g of water at 0 degree centigrade in cm^3 

//Calculations 
T=t+273;//The temperature at which water boils in K 
T1=1;//The difference in the temperature in K
p=p2-p1;//The difference in the pressure in mm of Hg 
P=(p/10)*13.6*980;//The difference in the pressure in dynes/cm^2 
L=(T*P*(V2-V1))/T1;//The latent heat of steam in ergs/g 
L1=L/J;//The latent heat of steam in cal/g 

//Output
printf('The Latent heat of steam is L = %3.1f cal/g ',L1)

