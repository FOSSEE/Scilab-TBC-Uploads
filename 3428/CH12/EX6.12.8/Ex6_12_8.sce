//Section-6,Example-1,Page no.-P.40
//To find by how much is the chemical potential of benzene reduced for the given conditions.
clc;
x_B=0.10
x_A=1.0-0.10
R=8.314
T=298
mu=R*T*log(x_A)       //mu=mu_A-mu_Abar
disp(mu,'Required chemical potential(Jmol^-1)')
