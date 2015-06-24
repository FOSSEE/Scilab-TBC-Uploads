//To find the torque and power
clc
//Given:
m=14*1000,m1=1.25*1000,m2=110 //kg
d=1,r=d/2,k1=450/1000,k2=125/1000 //m
F=1.2*1000 //N
eta=0.85
v=1.8 //m/s
a=0.1 //m/s^2
//Solution:
//Calculating the forces opposing the motion
P1=m*9.81*1/20+m*a+F //N
//Calculating the torque on the drum shaft to accelerate the load
T1=P1*r //N-m
//Calculating the mass moment of inertia of the drum
I1=m1*k1^2 //kg-m^2
//Calculating the angular acceleration of the drum
alpha1=a/r //rad/s
//Calculating the torque on the drum to accelerate the drum shaft
T2=I1*alpha1 //N-m
//Calculating the torque on the armature to accelerate drum and load
T3=(T1+T2)/(40*eta) //N-m
//Calculating the mass moment of inertia of the armature
I2=m2*k2^2 //kg-m^2
//Calculating the angular acceleration of the armature
alpha2=a/r*40 //rad/s^2
//Calculating the torque on the armature to accelerate armature shaft
T4=I2*alpha2 //N-m
//Calculating the torque on the motor shaft
T=T3+T4 //N-m
//Calculating the angular speed of the motor
omega=v/r*40 //rad/s
//Calculating the power developed by the motor
P=T*omega/1000 //Power developed by the motor, kW
//Results:
printf("\n\n The torque on the motor shaft, T = %.2f N-m.\n",T)
printf(" The power developed by the motor is %.2f kW.\n\n",P)