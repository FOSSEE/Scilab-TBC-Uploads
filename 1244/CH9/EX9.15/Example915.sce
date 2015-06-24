

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 9 Example # 9.15 ")

//Temperature in degree K
T = 800;
//Diameter of sphere in m
D = 0.4;
//Partial pressure of nitrogen in atm
PN2 = 1;
//Partial pressure of H2O in atm
PH2O = 0.4;
//Partial pressure of CO2 in atm
PCO2 = 0.6;

//The mean beam length for a spherical mass of gas is obtained from Table 9.7
//Beam length in m
L = (2/3)*D;

//The emissivities are given in Figs. 9.46 and 9.47
//Emissivity of H2O
epsilonH2O = 0.15;
//Emissivity of CO2
epsilonCO2 = 0.125;

//N2 does not radiate appreciably at 800 K, but since the total gas pressure
//is 2 atm, we must correct the 1-atm values for epsilon.
//From Figs. 9.48 and 9.49 the pressure correction factors are
//Pressure correction factor for H2O
CH2O = 1.62;
//Pressure correction factor for CO2
CCO2 = 1.12;

//From fig. 9.50
//Chnage in emissivity
deltaEpsilon = 0.014;

//Finally, the emissivity of the mixture can be obtained from Eq. (9.114):
disp("Emissivity of the mixture is")
//Emissivity of the mixture
epsilonMix = CH2O*epsilonH2O+CCO2*epsilonCO2-deltaEpsilon
