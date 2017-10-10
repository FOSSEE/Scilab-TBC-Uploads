////Variable Declaration
LMg = 0.0106                //Ionic conductance for Mg, S.m2/mol
LCl = 0.0076                //Ionic conductance for Cl, S.m2/mol
[nMg,nCl] = (1,2)

//Calculations
LMgCl2 = nMg*LMg + nCl*LCl

//Results
printf("\n Molar conductivity of MgCl2 on infinite dilution is %5.4f S.m2/mol",LMgCl2)

