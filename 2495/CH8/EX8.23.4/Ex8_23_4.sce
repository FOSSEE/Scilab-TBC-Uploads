clear
clc
K1=1;//
K2=1.66*10^6;//in dm^3/mol
Keq=(K1/K2);//equilibrium constant in mol/dm^3
RT_F=0.05913;//in V
n=1;//
Ecell=RT_F/n*(log10(Keq))
printf('Ecell=%.4f V',Ecell)
E_h=0.337;//
n2=2
Ecell_2=n2*E_h
printf('\nEcell_2=%.3f V',Ecell_2)

//page 544
