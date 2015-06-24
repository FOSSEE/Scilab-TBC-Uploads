clc
//initialisation of variables
W= 0.220 //gms
g= 980.7 //cm per sec62
f= 0.98
l= 4 //cm
//CALCULATIONS
T= W*g/(2*l)
Tc= T*f
//RESULTS
printf (' apparent surface tension= %.1f dynes per cm',T)
printf (' \n exact surface tension= %.1f dynes per cm',Tc)
