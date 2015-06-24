//Chapter 3, Problem 10
clc
Zlo=0.2                             //ratio of Zl/Zo impedance in ohm
Zo=50                               //output impedance in ohm

//calculation of characteristic impedance
Z0t=Zo*sqrt(Zlo)

printf("Characteristic impedance, Z0t = %d ohm",Z0t)
