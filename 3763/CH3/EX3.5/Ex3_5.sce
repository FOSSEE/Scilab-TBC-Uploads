clear
//
//
//

//Variable declaration
n=8    //number of atoms
r=2.351*10**-10     //bond length(angstrom)
A=28.09                //Atomic wt. of NaCl
N=6.02*10**26           //Avagadro number

//Calculation
a=4*r/sqrt(3)     
rho=n*A/(N*a**3)     //density(kg/m**3)

//Result
printf("\n density is %0.0f  kg/m**3",rho)
printf("\n answer varies due to rounding off errors")
