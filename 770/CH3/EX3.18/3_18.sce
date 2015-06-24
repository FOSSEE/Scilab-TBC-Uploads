clear;
clc;

//Example - 3.18
//Page number - 112
printf("Example - 3.18 and Page number - 112\n\n");


//Given
T_1 = 300;//[K] - Temperature at entry
P_1 = 100;//[kPa] - Pressure at entry
P_2 = 900;//[kPa] - Pressure at exit
R = 8.314;//[J/mol*K] - Universal gas constant

// (a)
// Reversible adiabatic compression
Y = 1.4;//Ratio of specific heat capacities
// For ideal gas, P*V^(Y)= constant and it takes the form of (T_2/T_1) = (P_2/P_1)^((Y-1)/Y)
T_2 = T_1*(P_2/P_1)^((Y - 1)/Y);//[K]
// The work exchange for adiabatic process is given by
// W_adia = -delta_H = -Cp*(T2-T1) = Cp*(T1-T2) = ((Y*R)/(Y-1))*(T1-T2)
W_adia = ((Y*R)/(Y - 1))*(T_1 - T_2);//[J/mol] -work done
// Molecular weight of air(21 vol% O2 and 79 vol% N2)=(0.21*32)+(0.79*28)=  28.84 g/mol
Mol_wt = 28.84;//[g/mol]
W_adia = W_adia/Mol_wt;//[J/g]
printf(" (a).The compressor work done for reversible adiabatic compession is %f J/g\n",W_adia);

//(b)
//Isothermal compression
//W_iso = -integral(V*dP) = -integral((R*T/P)*dP) = R*T*ln(P_2/P_1)
W_iso = -R*T_1*log(P_2/P_1);//[J/mol]
W_iso = W_iso/Mol_wt;//[J/g]
printf(" (b).The compressor work done for isothermal compession is %f J/g\n",W_iso);
//Note that in isothermal compression between the same states work done is less as compared to reversible adiabatic compression.

//(c)
//Ideal two-stage compression 
n = 1.3;//Polytropic exponent.
//Minimum work done in two stage compression  is given by
//W_comp = ((2*n*R*T_1)/(n-1))*[1-(P_x/P_1)^(n-1)/n]
//where for minimum work, (P_x/P_1) = (P_x/P_2), and thus
P_x = (P_1*P_2)^(1/2);//[kPa]
//therefore, work done is given by,
W_comp = ((2*n*R*T_1)/(n-1))*[1-(P_x/P_1)^((n-1)/n)];//[J/mol]
W_comp = W_comp/Mol_wt;//[J/g]
printf(" (c).The compressor work done for ideal two-stage compession is %f J/g\n",W_comp);

