//To find the force applied
clc
//Given:
d=50/1000,l=0.7 //m
p=10 //mm
mu=0.15
W=20*1000 //N
//Solution:
//Calculating the helix angle
alpha=atan(p/(%pi*d*1000)) //radians
//Force required to raise the load:
//Calculating the force required at the circumference of the screw
phi=atan(mu) //Limiting angle of friction, radians
P1=W*tan(alpha+phi) //N
//Calculating the force required at the end of the lever
P11=P1*d/(2*l) //N
//Calculating the force required at the circumference of the screw
P2=W*(phi-alpha) //N
//Foce rewuired to lower the load:
//Calculating the force required at the end of the lever
P21=P2*d/(2*l) //N
//Results:
printf("\n\n Force required at the end of the lever to raise the load, P1 = %d N.\n",P11)
printf(" Force required at the end of the lever to lower the load, P1 = %d N.\n\n",P21)