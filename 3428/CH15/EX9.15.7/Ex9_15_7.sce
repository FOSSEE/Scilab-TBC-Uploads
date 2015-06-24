//Section-9,Example-3,Page no.-E.9
//To calculate the equilibrium constant for the disproponation reaction.
clc;
E0=0.52-0.16
R=8.314
T=298
n=1
F=96500
K=(n*F*E0)/(R*T)
//K_eq=antilog(K)
K_eq=%e^K
disp(K_eq,'Equilibrium constant')
