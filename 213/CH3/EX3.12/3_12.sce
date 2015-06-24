//To find the speed, time and KE lost
clc
//Given:
T=150 //N-m
m1=60,m2=20 //kg
k1=140/1000,k2=80/1000 //m
N1=750,N2=0 //rpm
//Sloution:
//Calculating the angular speeds
omega1=2*%pi*N1/60,omega2=0 //rad/s
//Calculating the mass moment of inertia of the rotor on motor
I1=m1*k1^2 //kg-m^2
//Calculating the mass moment of inertia of the parts attached to machine
I2=m2*k2^2 //kg-m^2
//Calculating the speed after engagement of the clutch and the time taken
//We know that impulsive torque = change in angular momentum
//T*t = I1*(omega1-omega), or I1*omega+T*t = I1*omega1                .....(i)
//T*t = I2*(omega-omega2), or I2*omega-T*t = I2*omega2                .....(ii)
A=[I1 T; I2 -T]
B=[I1*omega1; I2*omega2]
V=A \ B
omega=V(1) //rad/s
t=V(2) //s
//Calculating the kinetic energy lost during the operation
E=I1*I2*(omega1-omega2)^2/(2*(I1+I2)) //N-m
//Results:
printf("\n\n The speed after engagement, omega = %.1f rad/s.\n",omega)
printf(" The time taken, t = %.2f s.\n",t)
printf(" The kinetic energy lost during the operation, E = %d N-m.\n\n",E)