clear
clc
PA=54.4;//vapour pressure of n-hexane in kN/m^2
PB=18.8;//vapour pressure of n-heptane in kN/m^2
YA=0.85;//molar fraction of n-hexane 
XA=(YA*PB)/(PA-((PA-PB)*YA));//mole fraction of n-hexane in equilibrium with vapour
printf('XA=%.3f',XA)
R=8.314;//J/Kmol
DelS_mix=(-((XA*2.303*log10(XA))+((1-XA)*2.303*log10(1-XA))))*R
printf('\nDelS_mix=%.3f J/K',DelS_mix)

//page 146
