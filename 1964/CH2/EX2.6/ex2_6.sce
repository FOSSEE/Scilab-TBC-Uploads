//Chapter-2, Example 2.6, Page 93
//=============================================================================
clc;
clear;
//INPUT DATA
l1=0.1;//length in m
l2=0.18;//length in m
l3=0.18;//length in m
lg=1*10^-3;//airgap length in mm
a1=6.25*10^-4;//area in m^2
a2=3*10^-4;//area in m^2
ur=800;//relative permeability of iron path
ur2=1;//relative permeability in free space
u0=4*%pi*10^-7
N=600;
phi=10^-4;//airgap flux in Wb
//CALCULATIONS 
//for the airgap
Bg=(phi/(a1));//fluxdensity in Tesla
Hg=(Bg/(u0*ur2));//magnetising force in A/m
MMF1=Hg*lg;//in A
//for path I1
B1=0.16;// flux density in tesla
H1=(B1/(ur*u0));//magnetising force in A/m
MMF2=H1*l1;//in A
//since paths l2 and l3 are similar,the total flux divide equally between these two paths.Since these paths are in parallel,consider only one of them
//for path l2
flux=50*10^-6;//flux in wb
B2=(flux/a2);//fluxdensity in tesla
H2=(B2/(ur*u0));//magnetising force in A/m
MMF3=H2*l2;//in A
totalmmf=MMF1+MMF2+MMF3;//in A
I=(totalmmf/N);//current required in A
//OUTPUT
mprintf("Thus current required is %1.3f A",I);
 //=================================END OF PROGRAM==============================
