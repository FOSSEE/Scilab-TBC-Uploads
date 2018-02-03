clear
//
//
//

//Variable declaration
chi=-0.4*10**-5       //magnetic susceptibility
H=5*10**5             //magnetic field intensity(amp/m)
mew0=4*%pi*10**-7

//Calculation
B=mew0*H*(1+chi)       //magnetic flux density(wb/m**2)
M=chi*H                //magnetic moment(A/m)

//Result
printf("\n magnetic flux density is %0.3f  wb/m**2",B)
printf("\n magnetic moment is %0.3f  A/m",M)
