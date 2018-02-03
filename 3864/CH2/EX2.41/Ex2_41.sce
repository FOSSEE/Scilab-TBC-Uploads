clear
//

//Initilization of Variables

E=2.1*10**5 //N/mm**2 //Youngs Modulus 
G=0.78*10**5 //N/mm**2 //Modulus of Rigidity

//Calculations

//Now using the relation
//E=2*G*(1+mu)
mu=E*(2*G)**-1-1 //Poissons ratio

//Bulk Modulus 
K=E*(3*(1-2*mu))**-1 //N/mm**2


//Result
printf("\n The Poissons Ratio is %0.2f  ",mu)
printf("\n The modulus of Rigidity %0.2f  N/mm**2",K)
