//To find diameter of hand wheel
clc
//Given:
d=50,p=12.5,D=60,R=D/2 //mm
W=10*1000,P1=100 //N
mu=0.15,mu1=0.18
//Solution:
//Calculating the helix angle
alpha=atan(p/(%pi*d)) //radians
//Calculating the tangential force required at the circumference of the screw
phi=atan(mu) //Limiting angle of friction, radians
P=W*tan(alpha+phi) //N
//Calculating the total torque required to turn the hand wheel
T=P*d/2+mu1*W*R //N-mm
//Calculating the diameter of the hand wheel
D1=T/(2*P1*1000)*2 //m
//Results:
printf("\n\n Diameter of the hand wheel, D1 = %.3f m.\n\n",D1)