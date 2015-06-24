// Exa 7.3
format('v',7);clc;clear;close;
// Given data
subdivision = 1/5;//sub division in units
positivepeak = 2.6;//positive peak in units
Vpp = positivepeak + positivepeak;//peak to peak in divisions
verticalattenuation = 2;//vertical attenuation in mV/div
verticalattenuation = verticalattenuation * 10^-3;// in V/div
Vpp = Vpp * verticalattenuation;// in V
Vpp = Vpp * 10^3;// in mV
Vm = Vpp/2;;//amplitude of the sinusoidal voltage  in mV
disp(Vm,"The amplitude of the sinusoidal voltage in mV is");
V_RMS = Vm/sqrt(2);//r.m.s. value of the sinusoidal voltage in mV
disp(V_RMS,"The r.m.s. value of the sinusoidal voltage in mV is");
