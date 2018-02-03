clear
//
//
//

//Variable declaration
M=55.85         //atomic weight(amu)
N=6.02*10**26   //avagadro number(kg/mol)
rho=7870        //density(kg/m**3)    
a=2.9*10**-10   //lattice constant(m)    

//Calculation 
n=a**3*rho*N/M     //number of atoms per unit cell

//Result
printf("\n number of atoms per unit cell is %0.3f  ",n)
