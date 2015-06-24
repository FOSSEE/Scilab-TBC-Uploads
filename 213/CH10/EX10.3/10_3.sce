//To estimate the power
clc
//Given:
W=75*1000 //W
v=300 //mm/min
p=6,d0=40 //mm
mu=0.1
//Solution:
//Calculating the mean diameter of the screw
d=(d0-p/2)/1000 //m
//Calculating the helix angle
alpha=atan(p/(%pi*d*1000)) //radians
//Calculating the force required at the circumference of the screw
phi=atan(mu) //Limiting angle of friction, radians
P=W*tan(alpha+phi) //N
//Calculating the torque required to overcome the friction
T=P*d/2 //N-m
//Calculating the speed of the screw
N=v/p //rpm
//Calculating the angular speed
omega=2*%pi*N/60 //rad/s
//Calculating the power of the motor
Power=T*omega/1000 //Power of the motor, kW
//Results:
printf("\n\n Power of the motor required = %.3f kW.\n\n",Power)