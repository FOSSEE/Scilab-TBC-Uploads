//Chapter-2, Illustration 3, Page 57
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
d=0.137;//Bore in m
L=0.13;//Stroke in m
Vc=280*(10^-6);//Clearance volume in m^3
y=1.4;//Ratio of specific heats

//CALCULATIONS
Vs=(3.147/4)*(d^2)*L;//Stroke volume in m^3
rv=(Vc/Vs)*100;//Compression ratio
rvf=(Vs+Vc)/Vc;//final compression ratio
n=(1-(1/rvf^(y-1)))*100;//Cycle efficiency

//OUTPUT
mprintf('Clearance volume is %3.1f percent of swept volume \n Otto cycle efficiency is %3.2f percent',rv,n)






//==============================END OF PROGRAM=================================
