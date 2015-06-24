//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.13
clear;
clc;

//Given
T1 = 273+110;//Temperature in K
T = 298;//Room temperature in K
P = 1;//Pressure in atm
R = 1.98;//gas constant in Kcal/Kgmole
//Ag2CO3(s) (A) = Ag2O(s) (B) + CO2(g) (C)
a = 1;//Stoichiometry coefficient of A
b = 1;//Stoichiometry coefficient of B
c = 1;//Stoichiometry coefficient of C
//Standard entropy of the above components in Kcal/Kgmole K at 25 deg cel are given as
S_A = 40.17;
S_B = 29.09;
S_C = 51.08;
//Standard enthalpy of the above components in Kcal/Kgmole at 25 deg cel are given as
H_A = -119900;
H_B = -6950;
H_C = -94036;
//Specific heat (assumed constant) of the above components in Kcal/Kgmole K are given as
C_A = 26.1;
C_B = 16.5;
C_C = 9.6;

//To Calculate the partial pressure of CO2 required for decomposition and thus determine whether Ag2CO3 will decomposes or not at the given pressure and temperature
del_H = H_C+H_B-H_A;//Standard heat of reaction  at 25 deg cel in Kcal/Kgmole
del_C = b*C_B+c*C_C-a*C_A;
//From equation 14.15 (page no 340)
del_Ht = del_H +del_C*(T1-T);
del_F = del_H-(T*(S_B+S_C-S_A));//Standard free energy in Kcal/Kgmole
Ka1 = %e^(-del_F/(R*T));//Equilibrium constant at temperature T
//Since del_Ht is constant(as del_C = 0),Ka2 can be calculated by equation 14.43 (page no 316)
Ka2 = Ka1* %e^((del_Ht/R)*(1/T1-1/T));
p_CO2 = Ka2;
mprintf('The partial pressure of CO2 required for decomposition is %4.3e atm',p_CO2);
if p_CO2 < P 
    mprintf('\n Silver carbonate will not decompose at 110 deg celsius as the pressure given is 1 atm');
else
    mprintf('\n Silver carbonate will decompose at 110 deg celsius');
end
//end