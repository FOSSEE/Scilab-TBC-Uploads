// Chapter 9_The bipolar transistor
//Caption_Non ideal effects
//Ex_7//page 382
T=300
NE1=10^18   //emitter doping
NE2=10^19
ni=1.5*10^10     //intrinsic ion concentration
pEO1=ni^2/NE1
pEO2=ni^2/NE2
//This we did by neglecting bandgap narrowing , if we consider it, we get
pEO11=pEO1*exp(0.030/0.0259)
pEO21=pEO2*exp(0.1/0.0259)
printf('The thermal equilibrium minority carrier concentration increases by a factor of 1.5 instead of decreasing by a factor of 9.This effect is due to bandgap narrowing')