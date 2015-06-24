clc
clear
//Page number 480
//Input data 
p=135.2;//The given increase in the pressure in atmospheres 
V=-0.091;//The given increase in the specific volume when 1g of water freezes into ice in cm^3 
L=80;//Latent heat of fusion of ice in cal/gram 
T=273;//The temperature of ice in K 

//Calculations 
L1=L*4.18*10^7;//The latent heat of fusion of ice in ergs/g 
P=p*1.013*10^6;//The given increase in the pressure in dynes/cm^2 
t=(P*T*V)/L1;//The temperature at which ice will freeze in degree centigrade 
t1=t+273;//The temperature at which ice will freeze in K

//Calculations 
printf('The temperature at which ice will freeze is %3.0f degree centigrade (or) %3.0f K ',t,t1)
