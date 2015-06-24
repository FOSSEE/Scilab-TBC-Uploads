//To find work done and efficiency
clc
//Given:
p=10,d=50,D2=60,R2=D2/2,D1=10,R1=D1/2 //mm
W=20*1000 //N
mu=0.08,mu1=mu
//Solution:
//Calculating the helix angle
alpha=atan(p/(%pi*d)) //radians
//Calculating the force required at the circumference of the screw to lift the load
phi=atan(mu) //Limiting angle of friction, radians
P=W*tan(alpha+phi) //N
//Calculating the torque required to overcome friction at the screw
T=P*d/(2*1000) //N-m
//Calculating the number of rotations made by the screw
N=170/p
//When the load rotates with the screw:
//Calculating the work done in lifting the load
W1=T*2*%pi*N //Work done in lifting the load, N-m
//Calculating the efficiency of the screw jack
eta1=tan(alpha)/tan(alpha+phi)*100 //%
//When the load does not rotate with the screw:
//Calculating the mean radius of the bearing surface
R=(R1+R2)/2 //mm
//Calculating the torque required to overcome friction at the screw and the collar
T=(P*d/2+mu1*W*R)/1000 //N-m
//Calculating the work done by the torque in lifting the load
W2=T*2*%pi*N //Work done by the torque in lifting the load, N-m
//Calculating the torque required to lift the load, neglecting frition
T0=(W*tan(alpha)*d/2)/1000 //N-m
//Calculating the efficiency of the screw jack
eta2=T0/T*100 //%
//Results:
printf("\n\n When the load rotates with the screw, work done in lifting the load = %d N-m.\n",W1)
printf(" Efficiency of the screw jack, eta = %.1f %c.\n",eta1,"%")
printf(" When the load does not rotate with the screw, work done in lifting the load = %d N-m.\n",W2)
printf(" Efficiency of the screw jack, eta = %.1f %c.\n\n",eta2,"%")