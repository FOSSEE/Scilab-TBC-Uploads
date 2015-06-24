clear
clc
n1=2;//
F=96500;//in C
E=0.490//in V
DelG=-(n1*F*E);//free energy change in J
printf('DelG=%.1f J',DelG)
T=298;//in K
dEdT_p=-(1.86*10^-4);//in V/K
DelH=-(n1*F*(E-(T*dEdT_p)));//enthalpy change in J
printf('\nDelH=%.1f J',DelH)
DelS=(n1*F*dEdT_p);//entropy change in J/K
printf('\nDelS=%.2f J/K',DelS)

//page 483
