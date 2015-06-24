// Example 2.11, page no-42
clear
clc

a=25000*10^3       //appogee distance in m
b=18330*10^3       //perigee distance in m
e=(sqrt(a^2-b^2)/a)
printf("Apogee distance  = a(1+e)= %dkm\n Perigee distance = a(1-e)= %dkm\n",a*(1+e)/1000,ceil(a*(1-e)/1000))
 
