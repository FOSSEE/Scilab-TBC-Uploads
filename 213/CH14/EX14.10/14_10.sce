//To find centrifugal and gyroscopic effects
clc
//Given:
m=2500 //kg
x=1.5, R=30, dW=0.75, rW=dW/2, h=0.9 //m
v=24*1000/3600 //m/s
G=5
IW=18, IE=12 //kg-m^2
//Solution:
//Calculating the road reaction on each wheel
r=m*9.81/4 //Road reaction on each wheel, N
//Calculating the angular velocity o the wheels
omegaW=v/rW //rad/s
//Calculating the angular velocity of precession
omegaP=v/R //rad/s
//Calculating the gyroscopic couple due to one pair of wheels and axle
CW=round(2*IW*omegaW*omegaP) //N-m
//Calculating the gyroscopic couple due to the rotating parts of the motor and gears
CE=round(2*IE*G*omegaW*omegaP) //N-m
//Calculating the net gyroscopic couple
C=CW-CE //N-m
//Calculating the reaction due to gyroscopic couple at each of the outer or inner wheels
P=2*(-C)/(2*x) //N
//Calculating the centrifugal force
FC=m*v^2/R //N
//Calculating the overturning couple
CO=FC*h //N-m
//Calculating the reaction due to overturning couple at each of the outer and inner wheels
Q=2*CO/(2*x) //N
//Calculating the vertical force exerted on each outer wheel
PO=m*9.81/4-P/2+Q/2 //N
//Calculating the vertical force exerted on each inner wheel
PI=m*9.81/4+P/2-Q/2 //N
//Results:
printf("\n\n Vertical force exerted on each outer wheel, PO = %.2f N.\n\n",PO)
printf(" Vertical force exerted on each inner wheel, PI = %.2f N.\n\n",PI)