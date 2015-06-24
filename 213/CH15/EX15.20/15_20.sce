//To find torque exerted
clc
//Given:
D=240/1000, L=600/1000, r=L/2, l=1.5, GC=500/1000, kG=650/1000 //m
mR=300, mC=250 //kg
N=125 //rpm
theta=30 //degrees
//Solution:
//Refer Fig. 15.25
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Analytical method:
//Calculating the distance of centre of gravity of the connecting rod from P
l1=l-GC //m
//Calculating the ratio of lengths of the connecting rod and crank
n=l/r
//Calculating the inertia force due to total mass of the reciprocating parts at P
FI=(mR+(l-l1)/l*mC)*omega^2*r*(cosd(theta)+cosd(2*theta)/n) //N
//Calculating the corresponding torque due to FI
TI=FI*r*(sind(theta)+sind(2*theta)/(2*sqrt(n^2-(sind(theta))^2))) //N-m
//Calculating the equivalent length of a simple pendulum when swung about an axis through P
L=((kG)^2+(l1)^2)/l1 //m
//Calculating the correcting torque
TC=mC*l1*(l-L) //N-m
//Calculating the torque due to the weight of the connecting rod at C
TW=mC*9.81*(l1/n)*cosd(theta) //N-m
//Calculating the total torque exerted on the crankshaft
Tt=TI+TC+TW //Total torque exerted on the crankshaft, N-m
//Results:
printf("\n\n Total torque exerted on the crankshaft = %.1f N-m.\n\n",Tt)