clc
//to calculate charge on the capacitance
epsilon0=8.854*10^-12 //permittivity
epsilonr=6 //relative permittivity
V=100 //voltage in volts
d=1.5*10^-3 //distance in m
A=4*10^-4//area in m^2
Q=epsilon0*epsilonr*A*V/d
disp("the charge on the capacitance is Q="+string(Q)+"Coulomb")
