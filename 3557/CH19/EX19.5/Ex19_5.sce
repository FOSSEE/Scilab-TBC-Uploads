//Example 19.5//

a=100;//g Fe //corrosion
b=55.85;//g Fe/g atom Fe // Atomic mass of iron (From Appendix 1)
c=1/2;//mole O2 //Given
d=1;//mole Fe //Given
m=(a/b)*(c/d)
mprintf("m = %f mole O2",m)

//Using ideal gas law, we obtain
//At STP
n=0.895;//mole //number of moles
R=8.314;//J/mol K //gas constant
T=273;//K //Temperature of the gas
a1=1;//atm //atmosphere
b1=1;//Pa //Pascal
P=9.869*10^-6;//atm // atmosphere //pressure of the gas
V=(n*R*T)/(a1*b1/P)
mprintf("\n V= %f m^3",V)
