clear
clc
//Example 5.3 DISCHARGE IN CHANNEL WITH NON-UNIFORM VELOCITY DISTRIBUTION
d=2; //depth[m]
w=5; //width[m]
umax=3; //max velocity[m/s]
//Discharge equation Q=integrate('u','A',0,d)
//dA=w*dy
Q=integrate('w*umax*sqrt(y/d)','y',0,2) //[m^3/s]
printf("\nThe discharge in the channel = %.f m^3/s.\n",Q)