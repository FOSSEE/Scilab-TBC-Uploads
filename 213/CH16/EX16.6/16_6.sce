//To find power and speed fluctuation
clc
//Given:
N=250 //rpm
m=500 //kg
k=600/1000 //m
//Solution:
//Refer Fig. 16.8
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Calculating the torque required for one complete cycle
T=(6*%pi*750)+(1/2*%pi*(3000-750))+(2*%pi*(3000-750))+(1/2*%pi*(3000-750)) //N-m
//Calculating the mean torque
Tmean=T/(6*%pi) //N-m
//Calculating the power required to drive the machine
P=Tmean*omega/1000 //kW
//Coefficient of fluctuation of speed:
//Calculating the value of LM
LM=%pi*((3000-1875)/(3000-750))
//Calculating the value of NP
NP=%pi*((3000-1875)/(3000-750))
//Calculating the value of BM
BM=3000-1875 //N-m
CN=BM
//Calculating the value of MN
MN=2*%pi
//Calculating the maximum fluctuation of energy
deltaE=(1/2*LM*BM)+(MN*BM)+(1/2*NP*CN) //N-m
//Calculating the coefficient of fluctuation of speed
CS=deltaE/(m*k^2*omega^2)
//Results:
printf("\n\n Power required to drive the machine, P = %.3f kW.\n\n",P)
printf(" Coefficient of speed, CS = %.3f.\n\n",CS)