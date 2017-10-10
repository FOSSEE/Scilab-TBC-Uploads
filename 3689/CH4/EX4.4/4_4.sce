////Varialble Declaration
ms = 1.423           //Mass of Na2SO4, g
mw = 100.34          //Mass of Na2SO4, g
DT = 0.037           //Change in temperature for solution, K
Mw = 18.02           //Molecular wt of Water
Ms = 142.04          //Molecular wt of ms Na2SO4
Ccal = 342.5         //Calorimeter constant, J/K
Cpw = 75.3 
//Data
DHfNa = -240.1
DHfSO4 = -909.3
DHfNa2SO4 = -1387.1

//Calculation
DHs = (-Ms/ms)*((mw/Mw)*Cpw*DT+Ccal*DT)
DHsolD = 2*DHfNa + DHfSO4 - DHfNa2SO4

//Results
printf("\n Enthalpy of solution for Na2SO4 %4.2e J/mol",DHs)

printf("\n Enthalpy of solution for Na2SO4 from Data %4.2e J/mol",DHsolD)

