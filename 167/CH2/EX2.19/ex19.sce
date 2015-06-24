// example 19
// heat transfer from a person
clear
clc
T1=20 //room temperature in celsius
T2=29 //body temperature of person in celsius
a=1.6 //exposed surface area in m^2
h=6 //convection heat transfer coefficient in W/m^2*C
Qc=h*a*(T2-T1) //heat loss due convection in W
Qr=0.95*5.67*10^-8*a*((T2+273)^4-(T1+273)^4) //heat loss due to radiation in W
Q=Qc+Qr //net heat loss from the person in W
printf("\n Hence,the total rate of heat transfer is =%.1f W. \n",Q) 