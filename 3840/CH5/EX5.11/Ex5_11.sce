clear
//
//
//

//Variable declaration
n=1                  //number of electrons
NA=6.025*10**26      //avagadro number
D=10500              //density(kg/m**3)
M=107.9              //atomic weight(kg)
m=9.11*10**-31       //mass(kg)
h=6.63*10**-34       //plancks constant(Js)

//Calculation
n=n*NA*D/M           //electronic concentration(per m**3)
x=(3*n/%pi)**(2/3)
Ef=h**2*x/(8*m)      //fermi energy(J)

//Result
printf("\n electronic concentration is %0.3f  *10**28 per m**3",n/10**28)
printf("\n fermi energy is %0.2f  *10**-19 J",Ef*10**19)
