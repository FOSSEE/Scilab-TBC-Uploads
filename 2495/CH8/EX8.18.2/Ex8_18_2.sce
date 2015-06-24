clear
clc
n1=2;//
F=96500;//in C
E=0.1634//in V
DelG=-(n1*F*E);//free energy change in J
printf('DelG=%.1f J',DelG)
T=298;//in K
dEdT_p=(0.000837);//in V/K
DelH=-(n1*F*(E-(T*dEdT_p)));//enthalpy change in J
printf('\nDelH=%.1d J',DelH)
DelS=(n1*F*dEdT_p);//entropy change in J/K
printf('\nDelS=%.2f J/K',DelS)

//There are some errors in the solution given in textbook
//page 481
