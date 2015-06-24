clc
clear
//Input data
h=4000;//The altitude of the airplane engine carburettor in m
A=14.7;//The air fuel ratio at sea level
ts=22;//The temperature at sea level in degree centigrade
R=287;//Real gas constant in J/kgK

//Calculations
ta=ts-(0.0065*h);//The temperature at the altitude in degree centigrade
p=1.013/10^0.2083;//The pressure at the altitude in bar
da=(p*10^5)/(R*(ta+273));//The density at altitude in kg/m^3
ds=(1.013*10^5)/(R*(ts+273));//The density at sea level in kg/m^3
Aa=A*(da/ds)^(1/2);//The air fuel ratio at altitude 

//Output
printf('The air fuel ratio at altitude = %3.2f ',Aa)
