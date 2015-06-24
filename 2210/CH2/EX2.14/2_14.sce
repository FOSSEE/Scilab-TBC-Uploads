//Chapter 2, Problem 14
clc
Z0=75                                  //characteristic impedance in ohm
l=1/5                                   //electrical length

//calculation of input impedance
Zin=-%i*Z0*cotg(2*%pi*l)

printf("Input impedance = %.1fj ohm",imag(Zin))
