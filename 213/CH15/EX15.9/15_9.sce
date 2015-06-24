//To find load, thrust, reaction and speed
clc
//Given:
N=1800 //rpm
r=50/1000, l=200/1000, D=80/1000, x=10/1000 //m
mR=1 //kg
p=0.7 //N/mm^2
//Solution:
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Net load on the gudgeon pin:
//Calculating the load on the piston
FL=round(%pi/4*(D*1000)^2*p) //N
//Refer Fig. 15.10
//By measurement,
theta=33 //degrees
//Calculating the ratio of lengths of connecting rod and crank
n=l/r
//Calculating the inertia force on the reciprocating parts
FI=mR*omega^2*r*(cosd(theta)+cosd(2*theta)/n) //N
//Calculating the net load on the gudgeon pin
FP=FL-FI //N
//Thrust in the connecting rod:
//Calculating the angle of inclination of the connecting rod to the line of stroke
phi=asind(sind(theta)/n) //degrees
//Calculating the thrust in the connecting rod
FQ=FP/cosd(phi) //N
//Calculating the reaction between the piston and cylinder
FN=FP*tand(phi) //N
//Engine speed at which the abov values will become zero:
//Calculating the speed at which FI=FL
omega1=sqrt((%pi/4*(D*1000)^2*p)/(mR*r*(cosd(theta)+cosd(2*theta)/n))) //rad/s
//Calculating the corresponding speed in rpm
N1=omega1*60/(2*%pi) //rpm
//Results:
printf("\n\n Net load on the gudgeon pin, FP = %d N.\n\n",FP)
printf(" Thrust in the connecting rod, FQ = %.1f N.\n\n",FQ)
printf(" Reaction between the piston and cylinder, FN = %d N.\n\n",FN)
printf(" Engine speed at which the above values will become zero, N1 = %d rpm.\n\n",N1)