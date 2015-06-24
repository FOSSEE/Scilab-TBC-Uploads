//example 7
//Phase Equilibrium for a Saturated Mixture
clear
clc
hf=503.81 // in kJ/kg,
sf=1.5279 // in kJ/kg-K
hg=2706.0 //in kJ/kg
sg=7.1292 //in kJ/kg-K
T=393.15 //Given temp. in K
gf=hf-T*sf //in kJ/kg
gg=hg-T*sg //in kJ/kg
disp('Since, two results are in close agreement, Therefore mixture of saturated liquid water and saturated water vapor at 120°C satisfies the criterion for phase equilibrium')