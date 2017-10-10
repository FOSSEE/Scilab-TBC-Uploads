//Optical Fiber communication by A selvarajan
//example 4.3
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
clear all;
Eg=1.3//band gap energy in eV
l=0.4//cavity length in mm
R1=0.5//reflectivities on ends
R2=0.5//reflectivities on ends
alpha=3//loss coefficient in /mm
current_density=30*10^5//current density in amp/m^2
area=0.2*0.5*10^-6//laser active area in m^2

lambda=1.24/Eg//emission wavelength in um
gth=alpha+(1/(2*l))*log(1/(R1*R2))// Threshold Gain
threshold_current=current_density*area//threshold current in A
mprintf("Emission wavelength =%f nm",lambda)//multiplication by 1e3 to convert unit from um to nm
mprintf("\nThreshold Gain=%f/mm",gth)
mprintf("\nThreshold current =%f mA",threshold_current*1e3)//for converting unit from A to mA
