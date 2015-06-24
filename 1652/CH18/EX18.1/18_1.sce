clc
//Initialization of variables
V1=0.284 //cm^3 /g
V2=1.43 //cm^3 /g
P1=142.4 //mm
P2=760 //mm
//calculations
z=(1/V1 - 1/V2)/(1/P1 - 1/P2)
invVm=1/V2 - z/P2
Vm=1/invVm
//results
printf("Volume = %.1f cm^3/g",Vm)
//The answer in the textbook is a bit different due to rounding off error.
