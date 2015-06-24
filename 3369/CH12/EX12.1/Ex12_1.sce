//Chapter 12, Exmaple 1, page 403
//Calculate radial thickness of insulating layer
clc
clear
//based on equation 12.15 and v1alues of E1 and E2 
E1 = 40 // kV/cm
E2 = 25 // kV/cm
ep1 = 6 // permittives of the material
ep2 = 4 //permittives of the material
d1 = 4 // cm
d2 = 10 // cm
r1 = 2 // cm
r2 = (E1*ep1*2)/(E2*ep2)
inner = r2-(d1/2)
outer = (d2/2)-r2
//based on equation 12.16
V1peak = E1*r1*log(r2/r1) // inner dielectric
V2peak = E2*r2*log(d2/(2*r2)) // outter dielectric
Vcab = V1peak+V2peak // Peak volatge of cable
rms = Vcab/sqrt(2)
printf("\n Radius = %f cm ",r2)
printf("\n Inner radial thickness = %f cm ",inner)
printf("\n Outer radial thickness = %f cm",outer)
printf("\n Vpeak of outer dielectric = %f kV", V1peak)
printf("\n Vpeak of inner dielectric = %f kV", V2peak)
printf("\n Peak voltage of cable = %f kV", Vcab)
printf("\n Safe opearating voltage = %f kV", rms)

// Answers may vary due to round off error.
