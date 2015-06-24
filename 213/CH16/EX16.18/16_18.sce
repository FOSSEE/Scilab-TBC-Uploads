//To find diameter and cross section
clc
//Given:
P=50*1000 //W
N=150 //rpm
n=75
sigma=4*10^6 //N/m^2
rho=7200 //kg/m^3
//Solution:
//Refer Fig. 16.21
//Calculating the angular speed of the engine
omega=2*%pi*N/60 //rad/s
//Calculating the mean torque transmitted by the flywheel
Tmean=P/omega //N-m
FG=Tmean //N-m
//Calculating the work done per cycle
WD=Tmean*4*%pi //Work done per cycle, N-m
//Calculating the work done during power stroke
WDp=1.4*WD //Work done during power stroke, N-m
//Calculating the maximum torque transmitted by the flywheel
Tmax=WDp/(1/2*%pi) //N-m
BF=Tmax //N-m
//Calculating the excess torque
Texcess=Tmax-Tmean //N-m
BG=Texcess //N-m
//Calculating the value of DE
DE=BG/BF*%pi //N-m
//Calculating the maximum fluctuation of energy
deltaE=1/2*DE*BG //N-m
//Mean diameter of the flywheel:
//Calculating the peripheral velocity of the flywheel
v=sqrt(sigma/rho) //m/s
//Calculating the mean diameter of the flywheel
D=v*60/(%pi*N) //m
//Cross-sectional dimensions of the rim:
//Calculating the coefficient of fluctuation of speed
CS=1/100
//Calculating the total energy of the flywheel
E=deltaE/(2*CS) //N-m
//Calculating the energy of the rim
Erim=15/16*E //N-m
//Calculating the mass of the flywheel rim
m=Erim/(1/2*v^2) //kg
//Calculating the thickness of the rim
t=round(sqrt(m/(%pi*D*4*rho))*1000) //mm
//Calculating the width of the rim
b=4*t //mm
//Results:
printf("\n\n Mean diameter of the flywheel, D = %d m.\n\n",D)
printf(" Thickness of the flywheel rim, t = %d mm.\n\n",t)
printf(" Width of the flywheel rim, b = %d mm.\n\n",b)