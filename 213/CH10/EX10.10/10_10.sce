//To find ratio of torques and efficiency
clc
//Given:
d=50,p=12.5 //mm
mu=0.13
W=25*1000 //N
//Solution:
//Calculating the helix angle
alpha=atan(p/(%pi*d)) //radians
//Calculating the force required on the screw to raise the load
phi=atan(mu) //Limiting angle of friction, radians
P1=W*(alpha+phi) //N
//Calculating the torque required on the screw to raise the load
T1=P1*d/2 //N-mm
//Calculating the force required on the screw to lower the load
P2=W*tan(phi-alpha) //N
//Calculating the torque required to lower the load
T2=P2*d/2 //N
//Calculating the ratio of the torques required
r=T1/T2 //Ratio of the torques required, N-mm
//Calculating the efficiency of the machine
eta=tan(alpha)/tan(alpha+phi)*100 //%
//Results:
printf("\n\n Torque required on the screw to raise the load, T1 = %d N-mm.\n",T1)
printf(" Ratio of the torque required to raise the load to the torque required to lower the load = %.1f.\n",r)
printf(" Efficiency of the machine, eta = %.1f %c.\n\n",eta,"%")