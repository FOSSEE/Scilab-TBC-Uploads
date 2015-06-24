//To find the KE and braking force
clc
//Given:
m=12*1000,m1=2*1000,m2=2.5*1000 //kg
k1=0.4,d1=1.2,r1=d1/2,k2=0.6,d2=1.5,r2=d2/2,s=6 //m
v=9*1000/3600 //m/s
//Solution:
//Calculating the mass moment of inertia of the front roller
I1=m1*k1^2 //kg-m^2
//Calculating the mass moment of inertia of the rear axle together with its wheels
I2=m2*k2^2 //kg-m^2
//Calculating the angular speed of the front roller
omega1=v/r1 //rad/s
//Calculating the angular speed of rear wheels
omega2=v/r2 //rad/s
//Calculating the kinetic energy of rotation of the front roller
E1=1/2*I1*omega1^2 //N-m
//Calculating the kinetic energy of rotation of the rear axle with its wheels
E2=1/2*I2*omega2^2 //N-m
//Calculating the total kinetic energy of rotation of the wheels
E=E1+E2 //N-m
//Calculating the kinetic energy of translation of the road roller
E3=1/2*m*v^2 //N-m
//Calculating the total kinetic energy of the road roller
E4=E3+E //N-m
//Calculating the braking force to bring the roller to rest
F=E4/s //N
//Results:
printf("\n\n The total kinetic energy of rotation of the wheels, E = %d N-m.\n",E)
printf(" The total kinetic energy of the road roller, E4 = %d N-m.\n",E4)
printf(" The braking force required to bring the roller to rest, F = %.1f N.\n\n",F)