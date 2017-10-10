////Variable Declaration
rho = 789.9     //Density of acetone, g/L
n = 1.0         //moles of acetone, mol
M = 58.08       //Molecular wt of acetone, g/mol
kHacetone = 1950 //Henrys law constant, torr
//Calculations
H = n*M*kHacetone/rho

//Results
printf("\n Henrys constant = %5.2f torr",H)

