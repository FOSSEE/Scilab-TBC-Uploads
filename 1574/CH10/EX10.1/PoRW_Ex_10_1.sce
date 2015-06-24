clc
//Chapter10
//Example10.1
//Given
Pt1=100//Radiated power
Pt2=30// Reduced Power 
r=1//assume distance to be unity for easeof calculation
E1=300*sqrt(100)/r
E2=300*sqrt(30)/r
E=20*log10((E2/E1))// Reduction in field strength in dBs
mprintf('Field strength will reduce by %f dBs',-E)
