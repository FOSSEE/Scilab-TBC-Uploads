//Problem 10.04:

//initializing the variables:

//calculation:
//The standard heat of combustion for this organic is obtained directly from \nTable 10.1, noting that the H2O and HCl formed are in the liquid and gaseous states,\n respectively:
DH0c = -1600 //kcal/gmol
//First, write a balanced stoichiometric equation for this combustion reaction:
//C14H9Cl5 + 15O2 ---> 14CO2 + 2H2O(l) + 5HCl(g)
//For this reaction,
//DH0c = 14DH0f,CO2 + 2DH0f ,H2O(l) + 5DH0f ,HCl(g) - DH0f ,C14H9Cl5
//From Table 10.1,
DH0fCO2 = -94.052 //kcal/gmol
DH0fH2O = -68.317 //kcal/gmol
DH0fHCl = -22.063 //kcal/gmol
//Solving this equation for DH0f ,C14H9C15 yields
DH0fC14H9Cl5 = -1*DH0c + 14*DH0fCO2 + 2*DH0fH2O + 5*DH0fHCl //kcal=gmol

printf("\n\nResult\n\n")
printf("\n DH0fC14H9Cl5 = %.3f kcal/gmol ",DH0fC14H9Cl5)
