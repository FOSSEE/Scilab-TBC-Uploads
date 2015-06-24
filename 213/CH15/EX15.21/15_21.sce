//To find acceleration and inertia torque
clc
//Given:
N=1200 //rpm
L=110/1000, r=L/2, l=250/1000, PC=l, CG=75/1000 //m
mC=1.25 //kg
theta=40 //degrees
//Solution:
//Refer Fig. 15.26
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Radius of gyration of the connecting rod about an axis through its mass centre:
//Calculating the distance of the centre of gravity from the point of suspension
l1=l-CG //m
PG=l1
//Calculating the frequency of oscillation
n=21/20 //Hz
//Calculating the radius of gyration of the connecting rod about an axis through its mass centre
kG=round(sqrt((9.81*l1/(2*%pi*n)^2)-l1^2)*1000) //mm
//Acceleration of the piston:
//Calculating the ratio of lengths of the connecting rod and crank
n=l/r
//Calculating the acceleration of the piston
aP=omega^2*r*(cosd(theta)+cosd(2*theta)/n) //m/s^2
//Calculating the angular acceleration of the connecting rod
alphaPC=(-omega^2*sind(theta))/n //rad/s^2
//Inertia torque exerted on the crankshaft:
//Calculating the mass of the connecting rod at P
m1=(l-l1)/l*mC //kg
//Calculating the vertical inertia force
FI=round(m1*aP) //N
//By measurement,
OM=0.0425, NC=0.035 //m
//Calculating the corresponding torque due to FI
TI=FI*OM //N-m
//Calculating the equivalent length of a simple pendulum when swung about an axis passing through P
L=((kG/1000)^2+(l1)^2)/l1 //m
//Calculating the correction couple
Tdash=mC*l1*(l-L)*alphaPC //N-m
//Calculating the corresponding torque on the crankshaft
TC=-Tdash*cosd(theta)/n //N-m
//Calculating the torque due to mass at P
TP=m1*9.81*OM //N-m
//Calculating the equivalent mass of the connecting rod at C
m2=mC*(l1/l) //kg
//Calculating the torque due to mass at C
TW=m2*9.81*NC //N-m
//Calculating the inertia force exerted on the crankshaft
Ti=TI+TC-TP-TW //Inertia torque exerted on the crankshaft, N-m
//Results:
printf("\n\n Radius of gyration of the connecting rod about an axis through its mass centre, kG = %d mm.\n\n",kG)
printf(" Acceleration of the piston, aP = %.1f m/s^2.\n\n",aP)
printf(" Angular acceleration of the connecting rod, alphaPC = %.1f rad/s^2.\n\n",alphaPC)
printf(" Inertia torque exerted on the crankshaft = %.3f N-m.\n\n",Ti)