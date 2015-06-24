clear;
clc;

//Example - 3.17
//Page number - 111
printf("Example - 3.17 and Page number - 111\n\n");


//Given
T_1 = 280;//[K] - Temperature at entry
P_1 = 100;//[kPa] - Pressure at entry
T_2 = 400;//[K] - Temperature at exit
P_2 = 600;//[kPa] - Pressure at exit
m = 0.02;//[kg/s] - Mass flow rate
m = m*10^(3);//[g/s]
heat_loss = 16;//[kJ/kg]

//Cp_0 = 28.11 + 0.1967*10^(-2)*T + 0.4802*10^(-5)*T^(2) - 1.966*10^(-9)*T^(3)
//delta_H = q - w (neglecting kinetic and potential changes)
//delta_H = integral(Cp_0*dT)
delta_H = integrate('28.11 + 0.1967*10^(-2)*T + 0.4802*10^(-5)*T^(2) - 1.966*10^(-9)*T^(3)','T',T_1,T_2);//[J/mol - Enthalpy change
printf(" Change in enthalpy is %f J/mol\n",delta_H);

//Molecular weight of air(21 vol% O2 and 79 vol% N2)=(0.21*32)+(0.79*28)=  28.84 g/mol
Mol_wt = 28.84;//[g/mol]
q = - (heat_loss*Mol_wt);//[J/mol]
w = q - delta_H;//[J/mol]
printf(" The work done per mole of air is %f J/mol\n",w);
//the negative sign implies that work is done on the compressor.

n = m/Mol_wt;//[mol/s] - Mole flow rate
W_net = delta_H*n;//[W]
W_net = -W_net*10^(-3);//[kW]
printf(" And the necessary power input to the compressor is %f kW\n",W_net);


