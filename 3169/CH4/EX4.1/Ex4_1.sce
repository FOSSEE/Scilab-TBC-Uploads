//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 4.1
//calculation of heat generated in specimen due to dielectric loss

//given data
epsilonr=4.2//value of the dielectric constant
tandelta=0.001//value of tandelta
f=50//value of frequency(in Hz)
E=50*10^3//value of electric field(in V/cm)

//calculation
//from equation of dielectric heat loss......H=(E*E*f*epsilonr*tandelta)/(1.8*10^12)
H=(E*E*f*epsilonr*tandelta)/(1.8*10^12)

printf('The heat generated in specimen due to dielectric loss is %3.3f mW/cm^3.',H*10^3)
