//To find power and coefficients
clc
//Given:
N=600 //rpm
Tmax=90 //N-m
m=12 //kg
k=80/1000 //m
//Solution:
//Refer Fig. 16.10
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Power developed:
//Calculating the work done per cycle
WD=3*1/2*%pi*90 //Work done per cycle, N-m
//Calculating the mean torque
Tmean=WD/(2*%pi) //N-m\
//Calculating the power developed
P=Tmean*omega/1000 //Power developed, kW
//Coefficient of fluctuation of speed:
//Calculating the maximum fluctuation of energy
//From the torque-crank angle diagram, maximum energy=E+5.89, and minimum energy=E-5.89
deltaE=5.89-(-5.89) //N-m
//Calculating the coefficient of fluctuation of speed
CS=round(deltaE/(m*k^2*omega^2)*100) //%
//Calculating the coefficient of fluctuation of energy
CE=deltaE/WD*100 //%
//Calculating the maximum angular acceleration of the flywheel
alpha=(Tmax-Tmean)/(m*k^2) //rad/s^2
//Results:
printf("\n\n Power developed = %.2f kW.\n\n",P)
printf(" Coefficient of fluctuation of speed, CS = %d %c.\n\n",CS,"%")
printf(" Coefficient of fluctuation of energy, CE = %.2f %c.\n\n",CE,"%")
printf(" Maximum angular acceleration of the flywheel, alpha = %d rad/s^2.\n\n",alpha)