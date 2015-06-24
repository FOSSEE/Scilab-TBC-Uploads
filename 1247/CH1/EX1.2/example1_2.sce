clear;
clc;

// Stoichiometry
// Chapter 1
// Dimensions and Units


// Example 1.2
// Page 12
printf("Example 1.2, Page 12 \n \n");

// solution

qm = 2000 // [kg/h] (mass flow rate)
d1 = 3.068 // [in] (internal dia of pipe)
// Using conversion factors from table 1.3 (Pg 9)
d2 = 3.068/.0393701 // [mm]
A = ((%pi/4)*d2^2)/10^6 // [m^2] (cross section area)
// Using steam tables; Appendix IV.3
v = 0.46166 // [m^3/kg] (sp. vol. of steam at 440 kPa)
qv = (qm*v)/3600 // [m^3/s]
vs = qv/A // [m/s]
printf("velocity of the steam in the pipeline is "+string(vs)+" m/s")
