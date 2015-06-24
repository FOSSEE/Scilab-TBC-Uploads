//To find the forcr
clc
//Given:
d=25,p=5,R=25 //mm
funcprot(0)
beta=27.5 //degrees
mu=0.1,mu2=0.16
l=0.5 //m
W=10*1000 //N
//Solution:
//Calculating the virtual coefficient of friction
mu1=mu/cosd(beta)
//Calculating the helix angle
alpha=atan(p/(%pi*d)) //radians
//Calculating the force on the screw
phi1=atan(mu1) //Virtual limiting angle of frcition, radians
P=W*tan(alpha+phi1) //N
//Calculating the total torque transmitted
T=(P*d/2+mu2*W*R)/1000 //N-m
//Calculating the force required at the end of a spanner
P1=T/l //N
//Results:
printf("\n\n Force required at the end of a spanner, P1 = %.1f N.\n\n",P1)