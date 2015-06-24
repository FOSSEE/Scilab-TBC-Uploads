clc
//Initialization of variables
g=9810 //N/m^3
Q=10 //m^3/s
H=20 //m
//calculations
Rate=g*Q*H/1000
//results
printf("Rate of energy loss = %d kW",Rate-2)
