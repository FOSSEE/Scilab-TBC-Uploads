//Section-12,Example-4,Page no.-SS.59
//To calculate concentration of holes and electrons in an n-type silicon.
clc;
C_n=0.1
e=1.6*10^-19
u_e=1300
N_D=C_n/(e*u_e)
n=N_D
n_i=1.5*10^10
disp(n,'Concentration of electrons(per cm^3)')
p=((n_i)^2)/n
disp(p,'Concentration of holes(per cm^3)')
