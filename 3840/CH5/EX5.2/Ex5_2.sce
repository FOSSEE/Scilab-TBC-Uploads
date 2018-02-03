clear
//
//
//

//Variable declaration
e=1.602*10**-19      //charge(c)
m=9.11*10**-31       //mass(kg)
h=6.63*10**-34       //plancks constant(Js)
Ef=7*e               //fermi energy(J)

//Calculation
x=Ef*8*m/h**2
n23=x/((3/%pi)**(2/3))
n=n23**(3/2)         //total number of free electrons(electrons/m**3)

//Result
printf("\n total number of free electrons is %0.4f  *10**28 electrons/m**3",n/10**28)
printf("\n answer in the book varies due to rounding off errors")
