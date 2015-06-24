
clc
clear
//Input data
m=230;//The amount of boron piece in g
mw=10;//The molecular weight of boron 
R=9.57*10^13;//Reaction rate in cm^-3s^-1
d=2.3;//Density of boron in g/cm^3
sa=755;//Absorbption cross section in barns
ss=4;//Elastic scattering cross section in barns

//Calculations
st=sa+ss;//The total cross section in barns
N=(d*6.023*10^23)/mw;//The number density of neutrons in cm^-3
S=N*st*10^-24;//Number density of neutrons for total in cm^-1
F=R/S;//Neutron flux in cm^-2s^-1
L=1/S;//Average distance a neutron travels before it is absorbed in cm

//Output
disp(F,"The thermal neutron flux (in cm^-2s^-1) = ");
disp(L,"The average distance that a neutron travels before it is absorbed (in cm) = ");
