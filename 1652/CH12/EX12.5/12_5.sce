clc
//Initialization of variables
x=0.25
Ps1=96 //mm
Ps2=43.9 //mm
//calculations
P1=x*Ps1
P2=(1-x)*Ps2
P=P1+P2
Xdash=P1/P
//results
printf("mole fraction of methanol in vapor = %.3f ",Xdash)
