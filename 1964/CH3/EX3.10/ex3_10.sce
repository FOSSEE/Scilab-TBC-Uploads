//Chapter-3, Example 3.10, Page 113
//=============================================================================
clc
clear
//INPUT DATA
NA=15000;//no of turns in coil A
IA=6;//current in coil A in Amp(A)
phiA=0.05*10^-3;//flux in coil A in wb
NB=12000;//no of turns in coil B
IB=6;//current in coil B in Amp(A)
phiB=0.08*10^-3;//flux in coil B in wb
phiAB=0.55*0.05*10^-3;//mutual flux in wb
//CALCULATIONS
LA=phiA*NA/IA;//self inductance of coil A in H
LB=phiB*NB/IB;//self inductance of coil B in H
LAB=phiAB*NB/IB;//mutual inductance of coils in H
K=LAB/sqrt(LA*LB);//coefficient of coupling
//OUTPUT
mprintf("Thus the self inductance of coil A  is %1.3f H\n",LA);
mprintf("Thus the self inductance of coil B is %1.2f H \n",LB);
mprintf("Thus the mutual inductance of coils is %1.3f H \n",LAB);
mprintf("Thus the coefficient of coupling is %1.3f \n",K)

//=================================END OF PROGRAM==============================
