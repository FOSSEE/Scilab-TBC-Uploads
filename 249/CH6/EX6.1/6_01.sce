clear
clc
V1=50;V2=30;V3=40;
//Branch D consists of 2 reactor in series,can be considered a single reactor of volume
VD=V1+V2;
VE=V3;
//For Reactor in parallel,V/F must be same for same conversion
//FE/FD=VE/VD;FD/F=1/(1+VE/VD)
m=VE/VD
fr_D=1/(1+m);
printf("\n Fraction of feed going to branch D is %f \n",fr_D)

