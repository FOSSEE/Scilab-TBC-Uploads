
clc
clear
//Input data
f=3.5;//Mass fraction of U-235 in the fuel in percentage
G=180;//Energy per fission in Mev
F=10^13;//The neutron flux in neutrons/cm^2s
sf=577;//Fission cross section of U-235 in barns
M=1.602*10^-13;//One MeV in J

//Calculations
N=2.372*(f/100)*10^22;//The fuel density for a uranium oxide fuel in nuclei/cm^3
q=G*N*sf*10^-24*F;//The rate of energy release in MeV/cm^3s
qg=q*M;//The rate of energy release in W/cm^3

//Output
printf('The specific energy release rate for a light water uranium reactor = %3.2f W/cm^3',qg)
