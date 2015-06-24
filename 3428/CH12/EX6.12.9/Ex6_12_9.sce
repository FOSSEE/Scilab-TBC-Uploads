//Section-6,Example-1,Page no.-P.41
//To calculate the minimum partial pressure of oxygen in the atmosphere that can achieve the given concentration.
clc;
n_O2=(4*10^-3)/(32)
n_H2O=(1.0*10^3)/(18)
x_O2=n_O2/(n_O2+n_H2O)
K_O2=3.3*10^7
p_O2=x_O2*K_O2
disp(p_O2,'Required partial pressure(Torr)')
