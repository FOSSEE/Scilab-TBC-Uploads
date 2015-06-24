//Chapter-5, Example 5.23, Page 215
//=============================================================================
clc
clear


//INPUT DATA
N=2000;//Speed of the engine
a=0.06;//Thermal diffusivity in m^2/h

//CALCULATIONS
t=1/(60*N);//Period of on oscillation in h
x=(1.6*sqrt(3.14*a*t))*1000;//Depth of penetration in mm

//OUTPUT
mprintf('Depth of penetration of the temperature oscillation into the cylinder wall of a single acting cylinder two stroke IC engine is%3.0f mm',x)

//=================================END OF PROGRAM==============================
