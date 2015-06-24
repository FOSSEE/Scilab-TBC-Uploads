//To find inclination of gyrowheel
clc
//Given:
m1=0.5, m2=0.3 //kg
k=20/1000, OG=10/1000, h=OG, R=50 //m
N=3000 //rpm
v=15 //m/s
//Solution:
//Refer Fig. 14.15 and Fig. 14.16
//Calculating the angular speed of the wheel
omega=2*%pi*N/60 //rad/s
//Calculating the mass moment of inertia of the gyrowheel
I=m1*k^2 //kg-m^2
//Calculating the angular velocity of precession
omegaP=v/R //rad/s
//When the vehicle moves in the direction of arrow X taking a left turn along the curve:
//Calculating the angle of inclination of the gyrowheel from the vertical
//Equating the overturning couple to the balancing couple for equilibrium condition,
theta1=atand((1/(m2*9.81*h))*(I*omega*omegaP-m2*v^2/R*h)) //degrees
//When the vehicle reverses at the same speed in the direction of arrow Y along the same path:
//Calculating the angle of inclination of the gyrowheel from the vertical
//Equating the overturning couple to the balancing couple for equilibrium condition,
theta2=atand((1/(m2*9.81*h))*(I*omega*omegaP+m2*v^2/R*h)) //degrees
//Results:
printf("\n\n Angle of inclination of the gyrowheel from the vertical when the vehicle moves in the direction of arrow X taking a left turn along the curve, theta = %.2f degrees.\n\n",theta1)
printf(" Angle of inclination of the gyrowheel from the vertical when the vehicle reverses at the same speed in the direction of arrow Y along the same path, theta = %.2f degrees.\n\n",theta2)