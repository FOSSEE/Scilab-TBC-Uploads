clc
clear
//Page number 488 
//Input data 
t=101;//The temperature at which water boils in degree centigrade 
p=787;//The pressure maintained at water boils in mm of Hg 
t1=100;//Normal boiling point of water in degree centigrade 
T=t1+273;//Normal boiling point of water in K 
p1=760;//The normal maintained pressure in mm of Hg 
V2=1601;//The specific volume of water evaporation in cm^3
V1=1;//The specific volume of water in cm^3 

//Calculations 
V=V2-V1;//The change in specific volume in cm^3 
dT=t-t1;//The change in temperature in degree centigrade or K 
dP=(p-p1)/10;//The change in pressure in cm of Hg 
L=(T*dP*13.6*980*V)/dT;//Latent heat of steam in ergs/g 
L1=L/(4.2*10^7);//The latent heat of steam in cal/g 

//Output 
printf('The latent heat of steam is  %3.4g ergs/g  (or) %3.2f cal/g ',L,L1)

