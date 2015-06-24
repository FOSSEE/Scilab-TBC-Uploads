//To find work done
clc
//Given:
p=12,d=40 //mm
mu=0.16
W=2500 //N
//Solutiom:
//Work done in drawing the wagons together agianst a steady load of 2500 N:
//Calculating the helix angle
alpha=atan(p/(%pi*d)) //radians
//Calculating the effort required at the circumference of the screw
phi=atan(mu) //Limiting angle of friction, radians
P=W*tan(alpha+phi) //N
//Calculating the torque required to overcome friction between the screw and nut
T=P*d/(2*1000) //N-m
//Calculating the number of turns required
N=240/(2*p)
//Calculating the work done
W1=T*2*%pi*N //Work done, N-m
//Work done in drawing the wagons together when the load increases from 2500 N to 6000 N:
W2=W1*(6000-2500)/2500 //Work done, N-m
//Results:
printf("\n\n Work done in drawing the wagons together agianst a steady load of 2500 N = %.1f N-m.\n",W1)
printf(" Work done in drawing the wagons together when the load increases from 2500 N to 6000 N = %.1f N-m.\n\n",W2)