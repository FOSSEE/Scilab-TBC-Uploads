//To Find the Speed and Energy Lost
clc
//Given:
r=500/1000,k=450/1000 //m
m1=500,m2=1250 //kg
u=0.75 //m/s
//Solution:
//Calculating the mass moment of inertia of drum
I2=m2*k^2 //kg-m^2
//Calculating the speed of truck
//Impulse, F=m1*v or, F-m1*v=0                                                          .....(i)
//Moment of impulse, F*r=I2*(omega2-omega2) or, F*r=I2*(u-v)/r or, F*r+I2*v/r=I2*u/r    .....(ii)
//Solving (i) and (ii)
A=[1 -m1; r I2/r]
B=[0; I2*u/r]
V=A \ B
v=V(2)
//Calculating the energy lost to the system
E=1/2*I2*(u^2-v^2)/r^2-1/2*m1*v^2 //Energy lost to the system, N-m
//Results:
printf("\n\n The speed of the truck when the motion becomes steady, v = %.3f m/s.\n",v)
printf(" The energy lost to the system is %d N-m.\n\n",E)