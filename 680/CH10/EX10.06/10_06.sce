//Problem 10.06:

//initializing the variables:

//calculation:
//TThe standard heat of combustion for chlorobenzene is obtained from the heats of formation data in Table 10.1. Since
//C6H5Cl + 7O2 ---> 6CO2 + 2H2O + HCl(g)
DH0c = 6*(-94052) + 2*(-57789) - 22063 - 12390
//This stoichiometric reaction is now written for combustion in air. First note that there are 7.0(79/21) or 26.33 lbmol of nitrogen present in the theoretical combustion air
//C6H5Cl + 7O2 + [26.33N2] ---> 6CO2 + 2H2O(g) + HCl(g) + [26.33N2]
//The heat capacity for the flue gas products in the form
//CP = a + b*T + r*T^2
Da = 230.305
Db = 0.1003175
Dr = -20.36033E-6
//DCp = Da + Db*T + Dr*T^2 cal/gmol.K or Btu/lbmol.degR
//Equation (10.22) applies in calculating the adiabatic flame temperature. The energy liberated \non combustion appears as sensible energy in heating the flue (product) gas. The sum of \nthese two effects is zero if the operation is conducted adiabatically, i.e.,
//DH0c + DHp = DH = 0
//Since 25 degC = 298K, the enthalpy change associated with heating the flue products is given by
//DHp = int(298,T)[DCp]dT
//T = theoretical adiabatic temperature (K)
//Substituting DCp obtained previously and integrating yields
//DHp = Da*(T - 298) + (Db/2)*(T^2 - 298^2) - Dr*(T^3 - 298^3)
DH0c = -714361 // cal/gmol
DH0p = -1*DH0c
//by solving the equation trial and error method
T = 2511.5 // K
Tf = 4061 // deg F

printf("\n\nResult\n\n")
printf("\n theoretical adiabatic flame temperature is %.0f degF",Tf)
