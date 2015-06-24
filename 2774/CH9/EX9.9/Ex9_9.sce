clc
// initialization of variables

// The reaction equation is 
//C3H8 + 5O2---> 8CO2 + 4H2O

// All the enthalpy of formation values are taken from Table B.5 with units in kJ/mol
hfCO2=-393520 // enthalpy associated with CO2
hfH2O=-241820 // enthalpy associated with gaseous H2O
hfC3H8=103850// enthalpy of formation associated with C3H8
hfgC3H8=15060// enthalpy of vapourization associated with C3H8
T=20+273 // temperature in kelvin
Rbar=8.314 // universal gas constant
Nr=6 // number of moles of reactants
Np=7 // number of moles of products
Hp=3*(hfCO2)+4*(hfH2O) // enthalpy of products

Hr=hfC3H8+hfgC3H8 // enthalpy of reactants

Q=(Hp-Hr-(Nr-Np)*Rbar*T)*10^(-3) // heat transfer from first law

printf(" The heat transfer is %i MJ",Q)

//The answers are slightly different in textbook as they have approximated the values while in SCILAB results are precise
