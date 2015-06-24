clc
clear
//Input data 
l=540;//Latent heat of vapourisation of steam in cal/g 
L=l*4.2*10^7;//Latent heat of vapourisation of steam in ergs/g 
V=1676;//The change in specific volume when 1 g of water is converted into steam in cc 
t1=100;//The actual boiling temperature of water in degree centigrade 
t2=150;//The given temperature at which water must boil in degree centigrade 
p=1;//The atmospheric pressure in atmospheres 

//Calculations 
T1=t1+273;//The actual boiling temperature of water in K 
T2=t2+273;//The given temperature at which water must boil in K 
T=T2-T1;//The change in temperature in K 
P=(L*T)/(T1*V);//The pressure in dynes/cm^2 
P1=P/10^6;//The pressure in atmospheres 
P2=P1+p;//The pressure at which water would boil at 150 degree centigrade in atmospheres 

//Output
printf('The pressure at which water would boil at 150 degree centigrade is  %3.3f atmospheres ',P2)

