//Chapter-14, Example 14.7, Page 589
//=============================================================================
clc
clear

//INPUT DATA
Ta=40+273;//Temperature of air in K
w=100;//Molecular weight in kg/k.mol
H=120;//Latent heat of vapourisation of volatile liquid in kJ/kg
p=3530;//Saturated vapour pressure in N/m^2
DAB=(0.2*10^-4);//DAB value in m^2/s

//CALCULATIONS
p1=1.16;//Density in kg/m^2
Cp=1.007;//Specific heat in J/kg.K
a=(22.5*10^-6);//Diffusivity in m^2/s
X=((H*100*p*10^-3)/(8.315*p1*Cp*(a/DAB)^(2/3)));//X value for temperature
T=(Ta+sqrt((Ta^2-(4*X))))*0.5;//Temperature in K

//OUTPUT
mprintf('Steady state temperature of cold water inside the pot is %3.1f K',T)

//=================================END OF PROGRAM==============================
