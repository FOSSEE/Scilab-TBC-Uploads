//To find the power required
clc
//Given:
d0=55,D2=60,R2=D2/2,D1=90,R1=D1/2 //mm
p=10/1000 //m
W=400 //N
mu=0.15
v=6 //Cutting speed, m/min
//Solution:
//Calculating the mean diameter of the screw
d=d0-p/2 //mm
//Calculating the helix angle
alpha=p/(%pi*d) //radians
//Calculating the force required at the circumference of the screw
phi=atan(mu) //Limiting angle of friction, radians
P=W*tan(alpha+phi) //N
//Calculating the mean radius of the flat surface
R=(R1+R2)/2 //mm
//Calculating the torque required
T=(P*d/2+mu*W*R)/1000 //N-m
//Calculating the speed of the screw
N=v/p //rpm
//Calculating the angular speed
omega=2*%pi*N/60 //rad/s
//Calculating the power required to operate the nut
Power=T*omega/1000 //Power required to operate the nut, kW
//Results:
printf("\n\n Power required to operate the nut = %.3f kW.\n\n",Power)