// Acid Base Titrations

clear;
clc;

printf("\t Example 4.11\n");

MNaOH=0.610;//molarity of NaOH, M
VH2SO4=20;//volume of H2SO4, mL
MH2SO4=0.245;//molarity of H2SO4, M
nH2SO4=MH2SO4*VH2SO4/1000;//moles of H2SO4

VNaOH=2*nH2SO4/MNaOH;//Volume of NaOH, L

printf("\t the volume of NaOH solution is : %4.1f mL\n",VNaOH*1000);

//End
