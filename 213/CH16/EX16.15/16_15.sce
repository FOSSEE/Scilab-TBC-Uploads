//To find mass and cross section
clc
//Given:
P=150*1000 //W
N=80 //rpm
CE=0.1
D=2, R=D/2 //m
rho=7200 //kg/m^3
//Solution:
//Calculating the angular speed of the engine
omega=2*%pi*N/60 //rad/s
//Calculating the coefficient of fluctuation of speed
CS=4/100
//Mass of the flywheel rim:
//Calculating the work done per cycle
WD=P*60/N //Work done per cycle, N-m
//Calculating the maximum fluctuation of energy
deltaE=WD*CE //N-m
//Calculating the mass moment of inertia of the flywheel
I=deltaE/(omega^2*CS) //kg-m^2
//Calculating the mass moment of inertia of the flywheel rim
Irim=0.95*I //kg-m^2
//Calculating the mass of the flywheel rim
k=R //Radius of gyration, m
m=Irim/k^2 //kg
//Calculating the cross-sectional area of the flywheel rim
A=m/(2*%pi*R*rho) //m^2
//Resilts:
printf("\n\n Mass of the flywheel rim, m = %d kg.\n\n",m)
printf(" Cross-sectional area of the flywheel rim, A = %.3f m^2.\n\n",A)