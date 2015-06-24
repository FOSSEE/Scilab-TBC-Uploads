// chapter 8 , Example 8.5 , pg 239
B=0.65     //magnetic induction   (in T)
d=8906     //density    (in Kg/m^3)
M=58.7    //atomic weight
e=1.6*10^-19     //charge of electron    (in C)
h=6.625*10^-34    //plancks constant    (in m^2*Kg*S^-1)
m=9.11*10^-31     //mass of electron   (in Kg)
Uo=4*%pi*10^-7     //vacuum permeability
Na=6.023*10^26    //Avogadro constant
Ub=(e*h)/(4*%pi*m)      //Bhor magneton   (in A*m^2)
N=(d*Na)/M     //number of atoms per unit volume
Ur=B/(N*Uo)     //relative permeability    (in A/m^2)
M=Ur/(Ub)      //magnetic moment
printf("Magnetic moment")
printf("M=%.2f   A*m^2",M)
