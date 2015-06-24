// Exa 3.23
format('v',8)
clc;
clear;
close;
// Given data
I_o = 10;// in mW
e = 1.6 * 10^-19;// in J/eV
hv = 2;// in eV
hv1=1.43;// in eV
alpha = 5 * 10^4;// in cm^-1
l = 46;// in µm
l = l * 10^-6;// in m
I_t = round(I_o * exp(-(alpha) * l));// in mW
AbsorbedPower= I_o-I_t;// in mW
AbsorbedPower=AbsorbedPower*10^-3;// in W or J/s
disp(AbsorbedPower,"The absorbed power in watt or J/s is");
F= (hv-hv1)/hv;// fraction of each photon energy unit
EnergyConToHeat= AbsorbedPower*F;// in J/s
disp(EnergyConToHeat,"The amount of energy converted to heat per second in J/s is : ")
A= (AbsorbedPower-EnergyConToHeat)/(e*hv1);
disp(A,"The number of photon per sec given off from recombination events in photons/s is");
