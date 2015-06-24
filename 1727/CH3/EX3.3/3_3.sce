clc
//Initialization of variables
d1=60 //cm
V1=45 //cm/s
d2=90 //cm
//calculations
V2=V1*d1^2 /d2^2
Q=%pi/4 *d1^2 *V1 *10^-6
//results
printf("Velocity at point 2 = %d cm/s",V2)
printf("\n FLow rate = %.4f m^3/s",Q)
