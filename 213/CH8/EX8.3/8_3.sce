//To find linear and angular acceleration
clc
//Given:
vC=1,vCD=vC //m/s
aC=2.5 //m/s^2
AB=3,BC=1.5 //m
//Solution:
//Refer Fig. 8.8
//By measurement from the velocity diagram, Fig. 8.8(b),
vBA=0.72,vBC=0.72 //m/s
//Calculating the radial component of acceleration of B with respect to C
arBC=vBC^2/BC //m/s^2
//Calculating the radial component of acceleration of B with respect to A
arBA=vBA^2/AB //m/s^2
//By measurement from the acceleration diagram, Fig. 8.8(c),
aCD=2.5,aC=aCD,arBC=0.346,arBA=0.173, atBA=1.41,atBC=1.94,vectorbb=1.13,vectorab=0.9 //m/s^2
//Calculating the angular accaleration of AB
alphaAB=atBA/AB //rad/s^2
//Calculating the angular acceleration of BC
alphaBC=atBC/BC //rad/s^2
//Results:
printf("\n\n The magnitude of vertical component of the acceleration of the point B is %.2f m/s^2.\n",vectorbb)
printf(" The magnitude of horizontal component of the acceleration of the point B is %.1f m/s^2.\n",vectorab)
printf(" The angular acceleration of the link AB, alphaAB = %.2f rad/s^2.\n",alphaAB)
printf(" The angular acceleration of the link BC, alphaBC = %.1f rad/s^2.\n\n",alphaBC)