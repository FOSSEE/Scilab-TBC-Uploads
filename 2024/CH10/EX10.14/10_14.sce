clc
//Initialization of variables
pw=0.15//psia
disp("using psychrometric charts,")
tdew=46 //F
//calculations
va=13.74 //ft^3/lbm dry air
rhoa=1/va
V=13.74
mw=45/7000
rhow=mw/V
w=0.00643
//results
disp("part a")
printf("partial pressure of water = %.2f psia",pw)
printf("\n dew temperature = %d F",tdew)
disp("part b")
printf("density of water = %.6f lbm/ft^3",rhow)
printf("\n density of air = %.4f lbm/ft^3",rhoa)
disp("part c")
printf("specific humidity  = %.5f lbm steam/lbm air",w)
