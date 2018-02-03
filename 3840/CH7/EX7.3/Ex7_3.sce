clear
//
//
//

//Variable declaration
mewr=15            //relative permeability
H=250              //magnetic field intensity(amp/m)
mew0=4*%pi*10**-7

//Calculation
M=H*(mewr-1)       //magnetisation(A/m)
B=mew0*(H+M)       //magnetic flux density(wb/m**2)

//Result
