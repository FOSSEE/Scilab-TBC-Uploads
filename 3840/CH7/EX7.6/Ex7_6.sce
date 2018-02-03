clear
//
//
//

//Variable declaration
mew0=4*%pi*10**-7
B=0.0044       //magnetic flux density(wb/m**2)
M=3300         //magnetisation(A/m)

//Calculation
H=(B/mew0)-M   //magnetising force(amp/m)
mewr=1+(M/H)   //relative permeability

//Result
printf("\n magnetising force is %0.1f  A/m",H)
printf("\n relative permeability is %0.2f  ",mewr)
printf("\n answers given in the book are wrong")
