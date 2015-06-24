//To find pressure, thrust, force and moment
clc
//Given:
r=300/1000, l=1.2, D=0.5 //m
mR=250 //kg
theta=60 //degrees
dp=0.35 //p1-p2, N/mm^2
N=250 //rpm
//Solution:
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Calculating the net load on the piston
FL=(dp)*%pi/4*(D*1000)^2 //N
//Calculating the ratio of length of connecting rod and crank
n=l/r
//Calculating the accelerating or inertia force on reciprocating parts
FI=mR*omega^2*r*(cosd(theta)+cosd(2*theta)/n) //N
//Calculating the piston effort
FP=(FL-FI)/1000 //kN
//Pressure on slide bars:
//Calculating the angle of inclination of the connecting rod to the line of stroke
phi=asind(sind(theta)/n) //degrees
//Calculating the pressure on the slide bars
FN=FP*tand(phi) //kN
//Calculating the thrust in the connecting rod
FQ=FP/cosd(phi) //kN
//Calculating the tangential force on the crank pin
FT=FQ*sind(theta+phi) //kN
//Calculating the turning moment on the crank shaft
T=FT*r //kN-m
//Results:
printf("\n\n Pressure on the slide bars, FN = %.2f kN.\n\n",FN)
printf(" Thrust in the connecting rod, FQ = %.2f kN.\n\n",FQ)
printf(" Tangential force on the crank-pin, FT = %.2f kN.\n\n",FT)
printf(" Turning moment on the crank shaft, T = %.3f kN-m.\n\n",T)