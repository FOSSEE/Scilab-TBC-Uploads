clear
//
//
//

//Variable declaration
chi=-0.42*10**-3       //magnetic susceptibility
H=1000             //magnetic field intensity(amp/m)
mew0=4*%pi*10**-7

//Calculation
M=chi*H                //magnetisation(A/m)
B=mew0*(H+M)       //magnetic flux density(wb/m**2)

//Result
