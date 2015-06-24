clc
//Initialization of variables
Na=6.023*10^23 // /mol
e=1.60228*10^-19 //C
e0=8.85419*10^-12 //C^2/J m
//calculations
factor=Na*e^2 /(4*%pi*e0)
//Multiply by Z^2/R to get the value of potential energy. Plot the graph
//results
printf("Potential energy = %.3e Z*Z/R  kJ/mol",factor)
