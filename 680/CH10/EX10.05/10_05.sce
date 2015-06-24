//Problem 10.05:

//initializing the variables:

//calculation:
//TThe standard heat of combustion for chlorobenzene is obtained from the heats of formation data in Table 10.1. Since
//C6H5Cl + 7O2 ---> 6CO2 + 2H2O + HCl(g)
DH0c = 6*(-94052) + 2*(-57789) - 22063 - 12390
//This stoichiometric reaction is now written for combustion in air. First note that there are 7.0(79/21) or 26.33 lbmol of nitrogen present in the theoretical combustion air
//C6H5Cl + 7O2 + [26.33N2] ---> 6CO2 + 2H2O(g) + HCl(g) + [26.33N2]
//The heat capacity for the flue gas products in the form
//CP = a + b*T + c*T^-2
Da = 264.12
Db = 0.0425
Dc = -1.522E6
//DCp = Da + Db*T + Dc*T^-2 cal/gmol.K or Btu/lbmol.degR
//Equation (10.22) applies in calculating the adiabatic flame temperature. The energy liberated \non combustion appears as sensible energy in heating the flue (product) gas. The sum of \nthese two effects is zero if the operation is conducted adiabatically, i.e.,
//DH0c + DHp = DH = 0
//Since 25 degC = 298K, the enthalpy change associated with heating the flue products is given by
//DHp = int(298,T2)[DCp]dT
//T2 = theoretical adiabatic temperature (K)
//Substituting DCp obtained previously and integrating yields
//DHp = Da*(T2 - 298) + (Db/2)*(T2^2 - 298^2) - Dc*(1/T2 - 1/298)
DH0c = -714361 // cal/gmol
DH0p = -1*DH0c
//by solving the equation trial and error method
T2 = 2519 // K
T2f = 4074 // deg F

printf("\n\nResult\n\n")
printf("\n theoretical adiabatic flame temperature is %.0f degF",T2f)
