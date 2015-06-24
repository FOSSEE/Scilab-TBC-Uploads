//To find linear and angular velocity and acceleration
clc
//Given:
omegaBC=75 //rad/s
alphaBC=1200 //rad/s^2
CB=100/1000,BA=300/1000 //m/
//Solution:
//Refer Fig. 8.5
//Calculating the linear velocity of B with respect to C
vBC=omegaBC*CB //m/s
//Calculating the tangential component of the acceleration of B with respect to C
alphatBC=alphaBC*CB //m/s^2
//By measurement from the velocity diagram, Fig. 8.6(b),
vG=6.8,vAB=4 //m/s
//Calculating the angular velocity of AB
omegaAB=vAB/BA //rad/s
//Calculating the radial component of the acceleration of B with respect to C
arBC=vBC^2/CB //m/s^2
//Calculating the radial component of the acceleration of A with respect to B
arAB=vAB^2/BA //m/s^2
//By measurement from the acceleration diagram, Fig. 8.6(c),
arBC=120,arAB=53.3,aG=414,atAB=546 //m/s^2
//Calculating the angular acceleration of AB
alphaAB=atAB/BA //rad/s^2
//Results:
printf("\n\n The velocity of G, vG = %.1f m/s.\n",vG)
printf(" The angular velocity of AB, omegaAB = %.1f rad/s, clockwise.\n",omegaAB)
printf(" The acceleration of G, aG = %d m/s^2.\n",aG)
printf(" The angular accaleration of AB, alphaAB = %d rad/s^2.\n\n",alphaAB)