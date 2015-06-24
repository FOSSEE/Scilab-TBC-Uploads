
clc
// given that
VH_H2=0 // half cell voltage 
VZn_Zn2=-0.763 // half cell voltage 
iZn=10^-7 // current density in A/cm^2
iH2=10^-10 // current density in A/cm^2
beta_Zn=0.09
beta_H2=-0.08
n=2 //Exchange of 2 electrons
F=96500//Faradays constant

printf(" Example 16.2\n")
printf("\n Part A")
i_c=10^[(VH_H2-VZn_Zn2-(beta_H2*log10(iH2))+(beta_Zn*log10(iZn)))/(beta_Zn-beta_H2)]
printf("\n  Rate of oxidation with zinc is %.2e A/cm^2",i_c)
r=i_c/(n*F)
printf("\n  Rate of oxidation is %.2e mol/cm^2-s\n",floor(r*1e12)/1e12)
printf("\n Part B")
Vc=VH_H2+(beta_H2*log10(i_c/iH2))
printf("\n Corrosion potential is %.3f V\n",Vc)
