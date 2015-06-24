//To find pressure on each rail
clc
//Given:
m=2000, mI=200 //kg
x=1.6, R=30, dW=0.7, rW=dW/2, k=0.3, h=1 //m
v=54*1000/3600 //m/s
theta=8 //degrees
//Solution:
//Refer Fig. 14.13
//Calculating the reactions at the wheels:
//Taking moments about B
RA=(m*9.81*cosd(theta)+m*v^2/R*sind(theta))*1/2+(m*9.81*sind(theta)-m*v^2/R*cosd(theta))*h/x //N
//Resolving the forces perpendicular to the track
RB=(m*9.81*cosd(theta)+m*v^2/R*sind(theta))-RA //N
//Calculating the angular velocity of wheels
omegaW=v/rW //rad/s
//Calculating the angular velocity of precession
omegaP=v/R //rad/s
//Calculating the gyroscopic couple
C=mI*k^2*omegaW*cosd(theta)*omegaP //N-m
//Calculating the force at each pair of wheels due to the gyroscopic couple
P=C/x //N
//Calculating the pressure on the inner rail
PI=RA-P //N
//Calculating the pressure o the outer rail
PO=RB+P //N
//Results:
printf("\n\n Pressure on the inner rail, PI = %.2f N.\n\n",PI)
printf(" Pressure on the outer rail, PO = %.2f N.\n\n",PO)