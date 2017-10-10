clc
Tc=405.5 //temperature in kelvin
Pc=112.77 //pressure in bar
T=473 //temperature in kelvin
Tr=T/Tc //reduced temperature 
mprintf("Tr=%f\n",Tr)//ans vary due to roundoff error
V=0.1
n=10^3
R=8.314
vr=Pc*10^5*(V/n)/(R*Tc)//pseudo-reduced volume using compressibility chart
mprintf("vr=%f\n",vr)//ans may vary due to roundoff error
Pr=1.9
P=Pr*Pc//equation for reduced pressure
mprintf("P=%fMPa",P/10)//ans vary due to roundoff error


