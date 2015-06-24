clc
// initialization of variables
clear
b=25 //mm
L=250 //mm
E_T=31 //GPa
Sigma_T=262 //MPa // From the curve
r=b/sqrt(12)
Q=%pi^2*E_T/((L/r)^2)
// Since this is not close enough, increment E_T
E_T=31.6 //GPa
Q=%pi^2*E_T/((L/r)^2)
P_T=Q*b^2
printf('Buckling load is %d kN',P_T)
