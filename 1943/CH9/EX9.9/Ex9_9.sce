
clc
clear
//Input data
f=100;//The reactor is fuelled of natural uranium in tonnes
A=238.05;//The atomic mass of natural uranium 
F=10^13;//The average thermal neutron flux in neutrons/cm^2s
A1=235.04;//The atomic mass of U-235
sf=579;//The fission cross section of U-235 in barns
sc=101;//The capture cross section of U-235 in barns
E=200;//The energy released per fission in MeV
P=0.715;//U-235 in natural uranium in percentage
N=2200;//The average thermal neutron in m/s

//Calculations
n=[(f*1000)*6.023*10^26*(P/100)]/A;//The number of U-235 atoms in the reactor in atoms
R=(sf*10^-24)*F*n;//The rate of fission in the reactor in fissions/s
T=R*E*1.602*10^-19;//Thermal power of the reactor in MW
Rr=T/f;//Rating the reactor MW/tonne
Rc=[[(R*A1*60*60*24)]/(6.023*10^26)];//The rate of consumption of U-235 by fission in kg/day
Rcc=Rc*1000;//The rate of consumption of U-235 by fission in g/day

//Output
printf('(a) The rating of the reactor = %3.2f MW/tonne \n (b)The rate of consumption of U-235 per day = %3.3f kg/day (or) %3.0f g/day ',Rr,Rc,Rcc)
