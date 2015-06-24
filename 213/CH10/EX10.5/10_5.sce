//To find the torque required
clc
//Given:
D=150/1000 //m
ps=2*10^6 //N/m^2
d0=50,p=6 //mm
mu=0.12
//Solution:
//Calculating the load on the valve
W=ps*%pi/4*D^2 //N
//Calculating the mean diameter of the screw
d=(d0-p/2)/1000 //m
//Calculating the helix angle
alpha=atan(p/(%pi*d*1000))
//Calculating the force required to turn the handle
phi=atan(mu) //Limiting angle of friction, radians
P=W*tan(alpha+phi) //N
//Calculating the torque required to turn the handle
T=P*d/2 //N-m
//Results:
printf("\n\n The torque required to turn the handle, T = %.1f N-m.\n\n",T)