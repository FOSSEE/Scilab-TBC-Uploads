//Example number 6.6, Page number 6.48

clc;clear;close


// Variable declaration
A=94;      // area(m**2)
vy=0.1;    // value of length(weber/m**2)
vx=20;     // value of unit length
n=50;      // number of magnetization cycles
d=7650;    // density(kg/m**3)

// Calculation
h=A*vy*vx;     // hysteresis loss per cycle(J/m**3)
hs=h*n;       // hysteresis loss per second(watt/m**3)
pl=hs/d;      // power loss(watt/kg)

// Result
printf("hysteresis loss per cycle is : %.f J/m^3",h)
printf("\nhysteresis loss per second is: %.f watt/m**3",hs)
printf("\npower loss is : %.2f watt/kg",(pl))
