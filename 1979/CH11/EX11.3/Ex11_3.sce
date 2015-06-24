//chapter-11 page 504 example 11.3
//==============================================================================
clc;
clear;

//For a marine radar system
Pt=250000;//peak transmitted power in W
G=4000;//power gain of the antenna
R=50000;//maximum range of radar in m
Pr=10^(-11);//minimum detectable signal in W 
f=10*10^9;//frequency of radar in H
c=3*10^8;//Velocity of light in m/sec

//CALCULATION
w=c/f;//wavelength in m
Ae=((G*w^2)/(4*(%pi)));//cross sectional area of the radar antenna in sq m
s=((Pr*(4*(%pi)*R^2)^2)/(Pt*G*Ae));//The cross section of the target the radar can sight in sq m

//OUTPUT
mprintf('\nThe cross section of the target the radar can sight is s=%2.2f sq m',s);

//=========================END OF PROGRAM===============================
