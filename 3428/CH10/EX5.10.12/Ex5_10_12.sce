//Section-5,Example-5,Page no.-D.13
clc;
R1_0=0.2
R1_t=0.7*R1_0
k=(1/50)*((1/0.14)-(1/0.2))
disp(k,'Rate constant(Lmol^-1*min^-1)')
t_h=(1/(k*R1_0))
disp(t_h,'Half life period(min)')
R2_0=0.2
R2_t=0.25*R2_0
t=((1/k)*((1/R2_t)-(1/R2_0)))
disp(t,'Time required to complete 75% of the reaction(min)')
