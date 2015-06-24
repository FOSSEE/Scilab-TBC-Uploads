//To fnd power transmitted
clc
//Given:
n=4, mu=0.3
c=5, r=160 //mm
S=500 //N
D=400/1000, R=D/2 //m
m=8 //kg
s=50 //N/mm
N=500 //rpm
//Solution:
//Calculating the angular speed of the clutch
omega=2*%pi*N/60 //rad/s
//Calculating the operating radius
r1=(r+c)/1000 //m
//Calculating the centrifugal force on each shoe
Pc=m*omega^2*r1 //N
//Calculating the inward force exerted by the spring
Ps=S+c*s //N
//Calculating the frictional force acting tangentially on each shoe
F=mu*(Pc-Ps) //N
//Calculating the total frictional torque transmitted by the clutch
T=n*F*R //N-m
//Calculating the power transmitted
P=T*omega/1000 //kW
//Results:
printf("\n\n Power transmitted, P = %.1f kW.\n\n",P)