//example 2
//Dew-Point Temperature of Combustion Products
clear
clc
mair=4.2*4.76*29 //mass of air in kg
mfuel=2*12+3*2 //mass of fuel in kg
AF=mair/mfuel //air-fuel ratio
Nv=3 //no. of kmol of water vapour
Nprod=21.49 //No. of kmol of products 
Pprod=100 //No. of kmol of products in kPa
Pv=Nv*Pprod/Nprod //Partial pressure of water vapour in kPa
disp('therefore,Dew point temp. of products =Saturation temp. at Pv')
Tdp=52.3//Dew point temp. of products in °C
printf("\n Hence, the Air fuel ratio is = %.1f kg air/kg fuel. \n",AF);
printf("\n and dew point temp. of products is = %.1f C. \n",Tdp);