//To find diameter and cross section
clc
//Given:
N=800 //rpm
stroke=300 //mm
sigma=7*10^6 //N/m^2
rho=7200 //kg/m^3
//Solution:
//Refer Fig. 16.18
//Calculating the angular speed of the engine
omega=2*%pi*N/60 //rad/s
//Calculating the coefficient of fluctuation of speed
CS=4/100
//Diameter of the flywheel rim:
//Calculating the peripheral velocity of the flywheel rim
v=sqrt(sigma/rho) //m/s
//Calculating the diameter of the flywheel rim
D=v*60/(%pi*N) //m
//Cross-section of the flywheel rim:
//Calculating the value of 1 mm^2 on the turning moment diagram
c=500*%pi/30 //Value of 1 mm^2 on the turning moment diagram, N-m
//Calculating the maximum fluctuation of energy
deltaE=round((420-(-30))*c) //N-m
//Calculating the mass of the flywheel rim
m=deltaE/(v^2*CS) //kg
//Calculating the thickness of the flywheel rim
t=sqrt(m/(%pi*D*5*rho))*1000 //mm
//Calculating the width of the flywheel rim
b=5*t //mm
//Results:
printf("\n\n Diameter of the flywheel rim, D = %.3f m.\n\n",D)
printf(" Thickness of the flywheel rim, t = %d mm.\n\n",t)
printf(" Width of the flywheel rim, b = %d mm.\n\n",b)