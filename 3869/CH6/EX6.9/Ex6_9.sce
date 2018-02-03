clear
//
//
//

//Variable declaration
r=0.1278*10**-9   //atomic radius(m)
n=4               //number of atoms per unit cell
M=63.5            //atomic weight(amu)
N=6.02*10**26     //avagadro number(kg/mol)

//Calculation
a=sqrt(8)*r   //lattice constant(m)
rho=n*M/(a**3*N)   //density(kg/m**3)    

//Result
printf("\n density is %0.2f  kg/m**3",rho)
printf("\n answer given in the book is wrong")
