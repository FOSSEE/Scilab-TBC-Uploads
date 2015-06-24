clc
//initialization of variables
P=14.5 //lb/in^2
T=70+460 //R
rh=0.34
//calculations
disp("From steam tables,")
Pg=0.3631 //lb/in^2
Pair=P-Pg
wratio=rh*0.622*Pg/Pair
//results
printf("Specific humidity = %.5f lbm/lbm",wratio)
