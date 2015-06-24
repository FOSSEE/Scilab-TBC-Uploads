//To find power, fluctuation and torque
clc
//Given:
I=1000 //kg-m^2
N=300 //rpm
//Solution:
//Refer Fig. 16.15 and Fig. 16.16
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Power of the engine:
//Calculating the work done per revolution
WD=integrate('5000+1500*sin(3*theta)','theta',0,2*%pi) //Work done per cycle, N-m
//Calculating the mean resisting torque
Tmean=WD/(2*%pi) //N-m
//Calculating the power of the engine
P=Tmean*omega/1000 //kW
//Maximum fluctuation of the speed of the flywheel when resisting torque is constant:
//Calculating the value of theta
sind3theta=(5000-5000)/1500
theta=1/3*(asind(sind3theta)+180) //degrees
//Calculating the maximum fluctuation of energy
deltaE=integrate('5000+1500*sin(3*theta)-5000','theta',0,60*%pi/180) //N-m
//Calculating the maximum fluctuation of speed of the flywheel
CS1=deltaE/(I*omega^2)*100 //%
//Maximum fluctuation of speed of the flywheel when resisting torque (5000+600*sin(theta)) N-m:
//Calculating the values of theta, thetaB and thetaC
thetaB=asind(sqrt((1/4*(3-600/1500)))) //degrees
thetaC=180-thetaB //degrees
//Calculating the maximum fluctuation of energy
deltaE=round(integrate('(5000+1500*sin(3*theta))-(5000+600*sin(theta))','theta',thetaB*%pi/180,thetaC*%pi/180)) //N-m
//Calculating the maximum fluctuation of speed of the flywheel
CS2=abs(deltaE)/(I*omega^2)*100 //%
//Results:
printf("\n\n Power of the engine, P = %.1f kW.\n\n",P)
printf(" Maximum fluctuation of the speed of the flywheel when resisting torque is constant, CS = %.1f %c.\n\n",CS1,"%")
printf(" Maximum fluctuation of speed of the flywheel when resisting torque (5000+600*sin(theta)) N-m, CS = %.3f %c.\n\n",CS2,"%")