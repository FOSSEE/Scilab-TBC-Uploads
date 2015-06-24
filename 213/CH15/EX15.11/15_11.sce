//To find force, load, thrust and speed
clc
//Given:
D=100/1000, L=120/1000, r=L/2, l=250/1000 //m
mR=1.1 //kg
N=2000 //rpm
theta=20 //degrees
p=700 //kN/m^2
//Solution:
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Net force on the piston:
//Calculating the force due to gas pressure
FL=p*%pi/4*D^2 //kN
//Calculating the ratio of lengths of the connecting rod and crank
n=l/r
//Calculating the inertia force on the piston
FI=round(mR*omega^2*r*(cosd(theta)+cosd(2*theta)/n)) //N
//Calculating the net force on the piston
FP=(FL*1000)-FI+mR*9.81 //N
//Resultant force on the gudgeon pin:
//Calculating the angle of inclination of the connecting rod to the line of stroke
phi=asind(sind(theta)/n) //degrees
//Calculating the resultant load on the gudgeon pin
FQ=round(FP/cosd(phi)) //N
//Calculating the thrust on the cylinder walls
FN=FP*tand(phi) //N
//Speed, above which, the gudgeon pin load would be reversed in direction:
//Calculating the minimum speed for FP to be negative
omega1=sqrt((FL*1000+mR*9.81)/(mR*r*(cosd(theta)+cosd(2*theta)/n))) //rad/s
//Calculating the corresponding speed in rpm
N1=omega1*60/(2*%pi) //rpm
//Results:
printf("\n\n Net force on the piston, FP = %.1f N.\n\n",FP)
printf(" Resultant load on the gudgeon pin, FQ = %d N.\n\n",FQ)
printf(" Thrust on the cylinder walls, FN = %.1f N.\n\n",FN)
printf(" Speed, above which, the gudgeon pin load would be reversed in direction, N1 > %d rpm.\n\n",N1)