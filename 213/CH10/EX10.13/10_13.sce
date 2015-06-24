//To find the torque required
clc
//Given:
d=22,p=3 //mm
funcprot(0)
beta=60/2 //degrees
W=40*1000 //N
mu=0.15
//Solution:
//Calculating the helix angle
alpha=atan(p/(%pi*d)) //radians
//Calculating the virtual coefficient of friction
mu1=mu/cosd(beta)
//Calculating the force required at the circumference of the screw
phi1=atan(mu1) //Virtual limiting angle of friction, radians
P=W*tan(alpha+phi1)
//Calculating the torque on one rod
T=P*d/(2*1000) //N-m
//Calculating the torque required on the nut
T1=2*T //N-m
//Results:
printf("\n\n The torque required on the nut, T1 = %.2f N-m.\n\n",T1)