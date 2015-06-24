//Chapter-1, Example 1.19, Page 1.45
//=============================================================================
clc
clear

//INPUT DATA
N=(300/60);//Speed of the motor in rps
P=4;//Number of poles
Z=732;//Number of conductors 
I=80;//Current through each conductor in A
l=0.35;//Length of the conductor in m
n=0.8;//Efficiency of flux distribution
B=0.8;//Flux densty in Wb/m^2
D=0.8;//Diameter of the armature in m

//CALCULATIONS
Ze=(Z*n);//Number of effective conductors
q=(B*l*2*3.14*(D/2))/4;//Flux per pole in Wb
Ta=(0.159*q*Ze*I*P);//Armature torque in N.m
F=(B*I*l);//Force on each conductor in N
T=(F*(D/2));//Torque due to on econductor in N.m
T1=(T*Ze);//Torque due to all conductors in N.m
Br=(2*3.14*N*60*T1)/(60*746);//Brake Horse power in HP

//OUTPUT
mprintf('Armature torque is %3.0f N.m \n Horse power output is %3.1f HP',Ta,Br)

//=================================END OF PROGRAM==============================

