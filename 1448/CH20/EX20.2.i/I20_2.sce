clc
//Initialization of variables
g2=5
g1=3
E2=6
E1=2
T =298 
k=1.38*10^-23 //J/K
h=6.626*10^-34 //J s
B=3.18*10^11 //Hz
//calculations
ratio=g2/g1 *(%e^((E1-E2)*h*B/(k*T)))
//results
printf("Ratio= %.2f",ratio)