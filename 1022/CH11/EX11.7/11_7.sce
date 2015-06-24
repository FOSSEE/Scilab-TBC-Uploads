clc
//initialisation of variables
h= 85 //W/m^2 C
s= 0.15 //m
K= 225 //W/m C
t= 510 //C
t1= 1200 //C
t0= 16 //C
a= 0.34
//CALCULATIONS
Bi= h*s/K
T= K*s*log((t0-t1)/(t-t1))/(h*a)
//RESULTS
printf ('Time needed for the casting to be heated to 510 C= %.2f hr',T)
