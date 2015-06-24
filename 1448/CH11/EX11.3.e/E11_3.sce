clc
//Initialization of variables
P=50 //J/s
l=313*10^-9 //m
h=6.62608*10^-34 //Js
N=6.023*10^23
c=2.99792*10^8 //m/s
yield=0.21
//calculations
rate=P*l/(h*c)
Frate=yield*rate
molrate=Frate/N
//results
printf("No.of diheptane molecules destroyed = %.1e s^-1",Frate)
printf("\n Moles of  diheptane molecules destroyed = %.1e mol s^-1",molrate)
