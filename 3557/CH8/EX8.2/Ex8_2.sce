//Example 8.2//

Y=1;// dimensionless geometry factor
YS=1460//MPa //MegaPascal // overall stress applied at failure
b=0.5;//Y.S //given
Kic=98;//MPa sqrt(m) //fracture toughness
a=(Kic^2)/((%pi)*(b*YS)^2)
mprintf("a = %e m   = 5.74 mm   (As 1milli = 10^-3 )",a)

