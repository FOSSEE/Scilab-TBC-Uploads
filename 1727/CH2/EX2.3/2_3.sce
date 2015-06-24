clc 
//Initialization of variables
Patm=101.3/9.81 //m of water
x1=0.45 //m
x2=0.3 //m
s1=920 //Kg/m^3
s2=13600 //Kg/m^3
g=9.81 //m/s^2
//calculations
Pa=s1*x1*g + s2*x2*g
Pa2=Pa/(1000*g)
Pa3=Pa/(s2)
//results
printf("Pressure at A = %.1f kPa",Pa/1000)
printf("\n Pressure at A = %.3f m of water",Pa2)
printf("\n Pressure at A = %.3f m of mercury",Pa3)
printf("\n Pressure at A = %.3f m of water absolute",Pa/1000 +101.3)
printf("\n Pressure at A = %.3f m of mercury",Pa2+10.3)
