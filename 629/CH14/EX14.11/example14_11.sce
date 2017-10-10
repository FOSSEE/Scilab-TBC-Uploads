clear
clc
//Example 14.11 FRANCIS TURBINE
r1=0.6; //[m]
beta1=110; //degrees
w=600*(2*%pi)/60 //angular speed[rad/s]
Q=4; //discharge[m^3/s]
B=0.1; //blade height[m]
//Radial velocity at inlet
Vr1=Q/(2*%pi*r1*B) //[m/s]
//Inlet guide vane angle
alpha1=acotd((r1*w/Vr1)+cotd(beta1)) 
printf("\nThe guide vane angle for non seperating flow condition at runner entrance = %.1f°.\n",alpha1)