//To find mass of the rim
clc
//Given:
a1=0.45*10^-3, a2=1.7*10^-3, a3=6.8*10^-3, a4=0.65*10^-3 //m^2
N1=202, N2=198 //rpm
R=1.2 //m
//Solution:
//Refer Fig. 16.12
//Calculating the net area
a=a3-(a1+a2+a4) //Net area, m^2
//Calculating the energy scale constant
c=3*10^6 //Energy scale constant, N-m
//Calculating the net work done per cycle
WD=a*c //Net work done per cycle, N-m
//Calculating the mean torque
Tmean=WD/(4*%pi) //N-m
//Calculating the value of FG
FG=Tmean //N-m
//Calculating the work done during expansion stroke
WDe=a3*c //Work done during expansion stroke, N-m
//Calculating the value of AG
AG=WDe/(1/2*%pi) //N-m
//Calculating the excess torque
Texcess=AG-FG //N-m
//Calculating the value of AF
AF=Texcess //N-m
//Calculating the value of DE
DE=AF/AG*%pi //rad
//Calculating the maximum fluctuation of energy
deltaE=1/2*DE*AF //N-m
//Mass of the rim of a flywheel:
//Calculating the mean speed of the flywheel
N=(N1+N2)/2 //rpm
//Calculating the mass of the rim of a flywheel
m=deltaE/(%pi^2/900*R^2*N*(N1-N2)) //kg
//Results:
printf("\n\n Mass of the rim of the flywheel, m = %d kg.\n\n",m)