clc;
clear;
h=4.135*10^-15 //plancks constant in eVs
c=3*10^8 //in m/s
EgGe=0.67 //in eV
EgSi=1.124 //in eV
EgGaAs=1.42 //in eV
EgSiO2=9 //in eV

//Calculation
lamda1=(h*c)/EgGe/10^-6 //in micro-m
lamda2=(h*c)/EgSi/10^-6 //in micro-m
lamda3=(h*c)/EgGaAs/10^-6 //in micro-m
lamda4=(h*c)/EgSiO2/10^-6 //in micro-m

mprintf("Wavelength of radiation for germanium= %1.2f micro-m\n",lamda1)
mprintf("Wavelength of radiation for silicon= %1.2f micro-m\n",lamda2)
mprintf("Wavelength of radiation for gallium-arsenide= %1.2f micro-m\n",lamda3)
mprintf("Wavelength of radiation for SiO2= %1.2f micro-m\n",lamda4)
