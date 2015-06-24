clc
//Initialization of variables
m=2 
M=28
M2=32
PN=300 //psia
Pt=400 //psia
//calculations
nN=m/M
PO=Pt-PN
nO=nN*PO/PN
mO=M2*nO
//results
printf("Mass of oxygen added = %.3f lbm",mO)
