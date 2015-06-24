//To find MI and size
clc
//Given:
a1=5*10^-5, a2=21*10^-5, a3=85*10^-5, a4=8*10^-5 //m^2
N2=98, N1=102 //rpm
rho=8150 //kg/m^3
sigma=7.5*10^6 //N/m^2
//Solution:
//Refer Fig. 16.20
//Calculating the net area
a=a3-(a1+a2+a4) //Net area, m^2
//Calculating the value of 1 m^2 on the turning moment diagram in terms of work
c=14*10^6 //Value of 1 m^2 on the turning moment diagram, N-m
//Calculating the net work done per cycle
WD=a*c //Net work done per cycle, N-m
//Calculating the mean torque on the flywheel
Tmean=WD/(4*%pi) //N-m
FG=Tmean //N-m
//Calculating the work done during expansion stroke
WDe=a3*c //Work done during expansion stroke, N-m
//Calculating the value of AG
AG=WDe/(1/2*%pi) //N-m
//Calculating the excess torque
Texcess=AG-FG //Excess torque, N-m
AF=Texcess //N-m
//Calculating the value of DE
DE=AF/AG*%pi //rad
//Calculating the maximum fluctuation of energy
deltaE=1/2*DE*AF //N-m
//Moment of inertia of the flywheel:
//Calculating the mean speed during the cycle
N=(N1+N2)/2 //rpm
//Calculating the corresponding angular mean speed
omega=2*%pi*N/60 //rad/s
//Calculating the coefficient of fluctuation of speed
CS=(N1-N2)/N
//Calculating the moment of inertia of the flywheel
I=deltaE/(omega^2*CS) //kg-m^2
//Size of flywheel:
//Calculating the peripheral velocity of the flywheel
v=sqrt(sigma/rho) //m/s
//Calculating the mean diameter of the flywheel
D=v*60/(%pi*N) //m
//Calculating the mass of the flywheel rim
m=deltaE/(v^2*CS) //kg
//Calculating the thickness of the flywheel rim
t=sqrt(m/(%pi*D*4*rho))*1000 //mm
//Calculating the width of the flywheel rim
b=4*t //mm
//Results:
printf("\n\n Moment of inertia of the flywheel, I = %d kg-m^2.\n\n",I)
printf(" Thickness of the flywheel rim, t = %.1f mm.\n\n",t)
printf(" Width of the flywheel rim, b = %.1f mm.\n\n",b)