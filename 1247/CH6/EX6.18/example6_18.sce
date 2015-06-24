clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.18
// Page 390
printf("Example 6.18, Page 390 \n \n");

// solution

// basis 800 kmol of inlet CS2-H2 mix
Pi = 106.7 //kPa  Total Pressure
Pcs2i = 16.93 // kPa
n = 800 // kmol
ncs2i = Pcs2i*n/Pi // kmol
nh2i = n-ncs2i
Po = 101.325 // kPa
Pcs2o = 6.19 // kPa
nh2o = 673.1 // kmol
ncs2o = Pcs2o*nh2o/(Po-Pcs2o)
ncs2a = ncs2i-ncs2o
mcs2a = ncs2a*76.1407 //kg
r = 600 // kg/h  design adsorption rate
Mi = n*r/mcs2a // kmol/h
Vi = Mi*22.843 // m^3/h
mcs2ac = .32-.04 // kg  CS2 absorbed per kg BD activated carbon
qm = r*1.04/mcs2ac  // kg/h
C = ncs2o/nh2o // kmol CS2/kmol H2   = Pcs2/(P-Pcs2)
Pcs2 = 24.763 // kPa
T = 281.5  //K  by eq 5.24
printf("(a) \n \n Volumetric flowrate of entering mixture = "+string(Vi)+" m^3/h \n \n \n(b) \n \n Mass flowrate of activated carbon = "+string(qm)+" kg/h \n \n \n(c) \n \n Original mixture must be coole to "+string(T)+" K at 405 kPa for achieving same concentration of the outlet mixture with adsorption.") 
