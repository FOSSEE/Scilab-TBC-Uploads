//Problem 10.10:

//initializing the variables:

//calculation:
//C2H3Cl + 2.5O2 + [9.4N2] ---> 2CO2 + H2O(g) + HCl(g) + [9.4N2]
//C3H8 + 5O2 + [18.8N2] ---> 3CO2 + 4H2O + [18.8N2]
DH0cC2H3Cl = 2*(-94052) + 1*(-57789) - 22063 + 8400
DH0cC3H8 = 3*(-94052) + 4*(-57789) + 24820
//The heat capacity for the flue gas products in the form
//CP = a + b*T + c*T^-2
Da1 = 87.7416
Db1 = 35.273E-3
Dr1 = -6.446E-6
Da2 = 170.317
Db2 = 63.820E-3
Dr2 = -9.5218E-6
//Calculate the mole fraction of 1-chloroethylene and propane:
MWoflChloroethylene = 62.5; //lb/lbmol
MWofpropane = 44; //lb/lbmol
//Converting from lb to lbmols on a total 100 lb basis,
mols1chloroethylene =  1.2
molspropane =0.57
totalmols = 1.77
//Converting mols to mole fraction,
n1 = 0.679
n2 = 0.321
//DCp = Da + Db*T + Dr*T^2 cal/gmol.K or Btu/lbmol.degR
//Equation (10.22) applies in calculating the adiabatic flame temperature. The energy liberated \non combustion appears as sensible energy in heating the flue (product) gas. The sum of \nthese two effects is zero if the operation is conducted adiabatically, i.e.,
//DH0c + DHp = DH = 0
//Since 25 degC = 298K, the enthalpy change associated with heating the flue products is given by
//DHp = int(298,T2)[DCp]dT
//T = theoretical adiabatic temperature (K)
//Substituting DCp obtained previously and integrating yields
//DH0p = Da*(T - 298) + (Db/2)*(T^2 - 298^2) - Dr*(T^3 - 298^3)
Da = n1*Da1 + n2*Da2
Db = n1*Db1 + n2*Db2
Dr = n1*Dr1 + n2*Dr2
DH0c = n1*DH0cC2H3Cl + n2*DH0cC3H8 // cal/gmol
DH0p = -1*DH0c
//by solving the equation trial and error method
T = 2406 // K
Tf = 3871 // deg F

printf("\n\nResult\n\n")
printf("\n theoretical adiabatic flame temperature is %.0f degF ",Tf)
