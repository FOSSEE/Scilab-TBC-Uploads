clc
//initialization of variables
T=100+460 //R
rh=0.6
//calculations
disp("From steam tables,")
Pg=0.9492 //lb/in^2
Pwv=rh*Pg
T=83 //F
//results
printf("Dew point is obtained from saturation pressure table and is equal to %d F",T)
