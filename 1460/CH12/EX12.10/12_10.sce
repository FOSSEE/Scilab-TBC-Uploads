clc
//initialization of variables
T1=69 //F
T2=84 //F
P=14.7 //lb/in^2
//calculations
disp("from wet bulb n dry bulb temperature charts,")
sh=82/7000
rh=47
Pwv=0.27
T=62 //F
h=33.3
//results
printf("Specific humidity = %.4f lbm/lbm",sh)
printf("\n Relative  humidity = %d ",rh)
printf("\n Partial pressure = %.2f lb/in^2",Pwv)
printf("\n Dew point = %d F",T)
printf("\n Enthalpy per pound of air = %.1f V/lbm dry air",h)
