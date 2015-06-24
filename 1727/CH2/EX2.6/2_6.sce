clc 
//Initialization of variables
P=450 //kN/m^2
alt=2000 //m
r=610 //mm of mercury
//calculations
Pat=760-r
Pat2=Pat*13.6*9.81*10^-3
Pg=Pat2+P
//results
printf("Gauge reading = %.2f kN/m^2",Pg)
