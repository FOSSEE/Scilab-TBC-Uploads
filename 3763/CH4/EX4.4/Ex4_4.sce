clear
//
//
//

//Variable declaration
d=970    //density(kg/m**3)
Na=6.02*10**26    //avagadro number
w=23    //atomic weight
m=9.1*10**-31     //mass(kg)
h=6.62*10**-34     //planck's constant

//Calculation
N=d*Na/w    //number of atoms/m**3
x=h**2/(8*m)
y=(3*N/%pi)**(2/3)
EF=x*y     //fermi energy(J)

//Result
printf("\n fermi energy is %0.2f  eV",EF/(1.6*10**-19))
