clc
//Initialization of variables
g=9.81 //kN/m^3
Q=3.2 //m^3/s
h=25 //m
eta=0.82
//calculations
bp= g*Q*h/eta
//results
printf("Brake power = %d kW",bp)
