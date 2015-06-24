//Section-9,Example-5,Page no.-E.10
//To calculate the equilibrium constant for the reaction.
clc;
E0_Ri=-0.21
E0_CH=-0.60
E0=E0_Ri-E0_CH
n=2
F=96500
R=8.314
T=298
K=(n*F*E0)/(R*T)
//K_eq=antilog(K)
K_eq=%e^K
disp(K_eq,'equilibrium constant for the reaction')
