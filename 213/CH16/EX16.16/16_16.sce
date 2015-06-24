//To find MI and dimensions
clc
//Given:
N=600 //rpm
rho=7250 //kg/m^3
sigma=6*10^6 //N/m^2
//Solution:
//Refer Fig. 16.19
//Calculating the angular speed of the engine
omega=2*%pi*N/60 //rad/s
//Calculating the total fluctuation of speed
CS=2/100
//Moment of inertia of the flywheel:
//Calculating the value of 1 mm^2 of turning moment diagram
c=250*%pi/60 //Value of 1 mm^2 of turning moment diagram, N-m
//Calculating the maximum fluctuation of energy
deltaE=round((162-(-35))*c) //N-m
//Calculating the moment of inertia of the flywheel
I=deltaE/(omega^2*CS) //kg-m^2
//Dimensions of the flywheel rim:
//Calculating the peripheral velocity of the flywheel
v=sqrt(sigma/rho) //m/s
//Calculating the mean diameter of the flywheel
D=v*60/(%pi*N) //m
//Calculating the maximum fluctuation of energy of the flywheel rim
deltaErim=0.92*deltaE //N-m
//Calculating the mass of the flywheel rim
m=deltaErim/(v^2*CS) //kg
//Calculating the thickness of the flywheel rim
t=sqrt(m/(%pi*D*2*rho))*1000 //mm
//Calculating the breadth of the flywheel rim
b=2*t //mm
//Results:
printf("\n\n Moment of inertia of the flywheel, I = %.1f kg-m^2.\n\n",I)
printf(" Thickness of the flywheel rim, t = %.1f mm.\n\n",t)
printf(" Breadth of the flywheel rim, b = %.1f mm.\n\n",b)