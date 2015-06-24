//To find coefficient of fluctuation
clc
//Given:
N=100 //rpm
k=1.75 //m
//Solution:
//Refer Fig. 16.9
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Calculating the coefficient of fluctuation of speed
CS=1.5/100
//Coefficient of fluctuation of energy:
AB=2000, LM=1500 //N-m
//Calculating the work done per cycle
WD=(1/2*%pi*AB)+(1/2*%pi*LM) //Work done per cycle, N-m
//Calculating the mean resisting torque
Tmean=WD/(2*%pi) //N-m
//Calculating the value of CD
CD=%pi/2000*(2000-875) //rad
//Calculating the maximum fluctuation of energy
deltaE=1/2*CD*(2000-875) //N-m
//Calculating the coefficient of fluctuation of energy
Ce=deltaE/WD*100 //%
//Calculating the mass of the flywheel
m=deltaE/(k^2*omega^2*CS) //kg
//Crank angles for minimum and maximum speeds:
//Calculating the value of CE
CE=(2000-875)/2000*(4*%pi/9) //rad
//Calculating the crank angle for minimum speed
thetaC=((4*%pi/9)-CE)*180/%pi //degrees
//Calculating the value of ED
ED=(2000-875)/2000*(%pi-(4*%pi/9)) //rad
//Calculating the crank angle for maximum speed
thetaD=((4*%pi/9)+ED)*180/%pi //degrees
//Results:
printf("\n\n Coefficient of fluctuation of energy, CE = %d %c.\n\n",Ce,"%")
printf(" Mass of the flywheel, m = %.1f kg.\n\n",m)
printf(" Crank angle from IDC for the minimum speed, thetaC = %d degrees.\n\n",thetaC)
printf(" Crank angle from IDC for the maximum speed, thetaD = %d degrees.\n\n",thetaD)