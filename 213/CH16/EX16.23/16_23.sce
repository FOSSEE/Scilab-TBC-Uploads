//To find power and cross section
clc
//Given:
n=25
d1=25/1000, t1=18/1000, D=1.4, R=D/2 //m
touu=300*10^6 //N/m^2
etam=95/100, CS=0.1
sigma=6*10^6 //N/m^2
rho=7250 //kg/m^3
//Solution:
//Power needed for the driving motor:
//Calculating the area of the plate sheared
AS=%pi*d1*t1 //m^2
//Calculating the maximum shearing force required for punching
FS=AS*touu //N
//Calculating the energy required per stroke
E=1/2*FS*t1 //Energy required per stroke, N-m
//Calculating the energy required per minute
E1=E*n //Energy required per minute, N-m
//Calculating the power required for the driving motor
P=E1/(60*etam)/1000 //Energy required for the driving motor, kW
//Dimensions for the rim cross-section:
//Calculating the maximum fluctuation of energy
deltaE=9/10*E //N-m
//Calculating the maximum fluctuation of energy provided by the rim
deltaErim=0.95*deltaE //N-m
//Calculating the mean speed of the flywheel
N=9*25 //rpm
//Calculating the mean angular speed
omega=2*%pi*N/60 //rad/s
//Calculating the mass of the flywheel
m=round(deltaErim/(R^2*omega^2*CS)) //kg
//Calculating the thickness of rim
t=sqrt(m/(%pi*D*2*rho))*1000 //mm
//Calculating the width of rim
b=2*t //mm
//Results:
printf("\n\n Power needed for the driving motor = %.3f kW.\n\n",P)
printf(" Thickness of the flywheel rim, t = %d mm.\n\n",t)
printf(" Width of the flywheel rim, b = %d mm.\n\n",b)