////Varialble Declaration
DH0_H2O = 241.8          //Std Enthalpy of reaxtion of Water Fomation backward rxn, kJ/mol
DH0_2H = 2*218.0         //Std Enthalpy of formation of Hydrogen atom, kJ/mol
DH0_O = 249.2            //Std Enthalpy of formation of Oxygen atom, kJ/mol
R = 8.314                //Ideal gas constant, J/(mol.K)
Dn = 2.0
T = 298.15               //Std. Temperature, K
//Calculation
DH0_2HO = DH0_H2O + DH0_2H + DH0_O
DU0 = (DH0_2HO - Dn*R*T*1e-3)/2

//Results
printf("\n Avergae Enthalpy change required for breaking both OH bonds %4.1f kJ/mol",DH0_2HO)

printf("\n Average bond energy required for breaking both OH bonds %4.1f kJ/mol",DU0)

