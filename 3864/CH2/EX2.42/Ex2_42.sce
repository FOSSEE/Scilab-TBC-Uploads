clear
//

//Initilization of Variables

G=0.4*10**5 //N/mm**2 //Modulus of rigidity
K=0.75*10**5 //N/mm**2 //Bulk Modulus 

//Calculations

//Youngs Modulus
E=9*G*K*(3*K+G)**-1

//Now from the relation
//E=2*G(1+2*mu)
mu=E*(2*G)**-1-1 //Poissons ratio 

//result
printf("\n Youngs modulus is %0.2f  N/mm**2",E)
printf("\n Poissons ratio is %0.2f  ",mu)
