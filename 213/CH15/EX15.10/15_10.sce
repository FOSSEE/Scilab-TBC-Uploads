//To find reaction, thrust and turning moment
clc
//Given:
aP=36 //m/s^2
theta=30 //degrees
p=0.5 //N/mm^2
RF=600 //N
D=300/1000, r=300/1000 //m
mR=180 //kg
n=4.5
//Solution:
//Reaction on the guide bars:
//Calculating the load on the piston
FL=round(p*%pi/4*(D*1000)^2) //N
//Calculating the inertia force due to reciprocating parts
FI=mR*aP //N
//Calculating the piston effort
FP=(FL-FI-RF)/1000 //kN
//Calculating the angle of inclination of the connecting rod to the line of stroke
phi=asind(sind(theta)/n) //degrees
//Calculating the reaction on the guide bars
FN=FP*tand(phi) //kN
//Calculating the thrust on the crank shaft bearing
FB=(FP*cosd(phi+theta))/cosd(phi) //kN
//Calculating the turning moment on the crank shaft
T=(FP*sind(theta+phi))/cosd(phi)*r //kN-m
//Results:
printf("\n\n Reaction on the guide bars, FN = %.2f kN.\n\n",FN)
printf(" Thrust on the crank shaft bearing, FB = %.1f kN.\n\n",FB)
printf(" Turning moment on the crank shaft, T = %.2f kN-m.\n\n",T)