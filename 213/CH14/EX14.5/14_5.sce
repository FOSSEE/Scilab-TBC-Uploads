//To find gyroscopic couple and direction
clc
//Given:
N=1500 //rpm
m=750 //kg
omegaP=1 //rad/s
k=250/1000 //m
//Solution:
//Calculating the angular speed of the rotor
omega=2*%pi*N/60 //rad/s
//Calculating the mass moment of inertia of the rotor
I=m*k^2 //kg-m^2
//Calculating the gyroscopic couple transmitted to the hull
C=I*omega*omegaP/1000 //kN-m
//Results:
printf("\n\n Gyroscopic couple transmitted to the hull, C = %.3f kN-m.\n\n",C)
printf(" When the pitching is upward, the relative gyroscopic couple acts in the clockwise direction.\n\n")