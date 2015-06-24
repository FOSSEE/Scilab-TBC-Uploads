//Section-9,Example-4,Page no.-E.9
//To calculate the equilibrium constant for the reaction.
clc;
E0_Sn=-0.14
E0_Pb=-0.13
E0=E0_Sn-E0_Pb
n=2
F=96500
R=8.314
T=298
K=(n*F*E0)/(R*T)
//K_eq=antilog(K)
K_eq=%e^K
disp(K_eq,'equilibrium constant for the reaction')
