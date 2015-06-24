//To find turning moment, thrust and acceleration
clc
//Given:
N=120 //rpm
D=250/1000, L=400/1000, r=L/2, l=0.6, d=50/1000 //m
mR=60 //kg
theta=45 //degrees
p1=550*1000, p2=70*1000 //N/m^2
//Solution:
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Turning moment on the crankshaft:
//Calculating the area of the piston on the cover end side
A1=%pi/4*D^2 //m^2
//Calculating the area of the piston rod
a=%pi/4*d^2 //m^2
//Calculating the net load on the piston
FL=p1*A1-p2*(A1-a) //N
//Calculating the ratio of lengths of the connecting rod and crank
n=l/r
//Calculating the inertia force on the reciprocating parts
FI=mR*omega^2*r*(cosd(theta)+cosd(2*theta)/n) //N
//Calculating the net force on the piston or piston effort
FP=(FL-FI)/1000 //kN
//Calculating the angle of inclination of the connecting rod to the line of stroke
phi=asind(sind(theta)/n) //degrees
//Calculating the turning moment on the crank shaft
T=(FP*sind(theta+phi))/cosd(phi)*r*1000 //N-m
//Calculating the thrust on the bearings
FB=(FP*cosd(theta+phi))/cosd(phi) //kN
//Acceleration of the flywheel:
P=20*1000 //W
m=60 //kg
k=0.6 //m
//Calculating the mass moment of inertia of the flywheel
I=m*k^2 //kg-m^2
//Calculating the resisting torque
TR=P*60/(2*%pi*N) //N-m
//Calculating the acceleration of the flywheel
alpha=(T-TR)/I //rad/s^2
//Results:
printf("\n\n Turning moment on the crank shaft, T = %d N-m.\n\n",T)
printf(" Thrust on the bearings, FB = %.2f kN.\n\n",FB)
printf(" Acceleration of the flywheel, alpha = %.1f rad/s^2.\n\n",alpha)