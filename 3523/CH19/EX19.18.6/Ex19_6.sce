clear all
clc
close

epso=8.84*1e-12;//Permittivity of air in F/m
mui=1.5*1e-4;//Mobility in m^2/sec.V
V=100;//Applied voltage in V
d=0.01;//Distance between two parallel plates in m
mus=0.001*mui;//Miobility of charged smoke particles

//Calculation of current density in nA/m^2
J=4*epso*mus*V^2/d^3;
printf('Calculation of current density in %f nA/m^2',J*1e9)
