//Chapter-13, Example 13.3, Page 557
//=============================================================================
clc
clear

//INPUT DATA
t=0.001;//Thickness of the membrane in m
CA1=0.02;//Concentration of helium in the membrane at inner surface in k.mol/m^3
CA2=0.005;//Concentration of helium in the membrane at outer surface in k.mol/m^3
DAB=10^-9;//Binary diffusion coefficient in m^2/s

//CALCULATIONS
NAx=((DAB*(CA1-CA2))/t)/10^-9;//Diffusion flux of helium through the plastic in k.mol/sm^2 *10^-9

//OUTPUT
mprintf('Diffusion flux of helium through the plastic is %3.0f*10^-9 k.mol/sm^2',NAx)

//=================================END OF PROGRAM==============================
