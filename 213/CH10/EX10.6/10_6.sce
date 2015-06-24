//To find force required
clc
//Given:
dc=22.5,p=5,D=50,R=D/2,l=500 //mm
mu=0.1,mu1=0.16
W=10*1000 //N
//Solution:
//Calculating the mean diameter of the screw
d=dc+p/2 //mm
//Calculating the helix angle
alpha=p/(%pi*d) //radians
//Calculating the force required at the circumference of the screw
phi=atan(mu) //Limiting angle of friction, radians
P=W*tan(alpha+phi) //N
//Calculating the total torque required
T=P*d/2+mu1*W*R //N-mm
//Calculating the force required at the end of a spanner
P1=T/l //N
//Results:
printf("\n\n Force required at the end of a spanner, P1 = %.2f N.\n\n",P1)