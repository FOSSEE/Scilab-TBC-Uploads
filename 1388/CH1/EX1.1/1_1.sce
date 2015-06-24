clc
//initialisation of variables
V= 22.394 //l
m= 32 //gm
T= 0 //C
T1= 50 //C
p= .8 //atm
//CALCULATIONS
V1= (T1+273.16)*V/(T+273.16)
V2= (1/p)*V1
//RESULTS
printf (' Volume = %.3f ',V2)
