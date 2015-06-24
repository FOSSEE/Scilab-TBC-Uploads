clc 
//initialisation of variables
R= 8.31*10 //ergs mole^-1 K^-1
M= 2.016 //gms
T= 0 //C
//CALCULATIONS
vp= sqrt(2*R*(273+T)/M)
v= sqrt(8*R*(273+T))/(%pi*M)
vr= sqrt(3*R*(273+T)/M)
//RESULTS
printf ('most probabale velocity= %.2e cm sec^-1',vp)
printf ('\n arthmetic mean velocity= %.2e cm sec^-1',v)
printf ('\n root mean square velocity= %.2e cm sec^-1',vr)
