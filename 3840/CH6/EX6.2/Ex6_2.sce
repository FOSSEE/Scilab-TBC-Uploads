clear
//
//
//

//Variable declaration
A=100*10**-4      //area(m**2)
epsilon0=8.85*10**-12    
d=1*10**-2     //seperation(m)
V=100     //potential(V)

//Calculation
C=A*epsilon0/d     //capacitance(PF)
Q=C*V         //charge on plates(C)

//Result
printf("\n capacitance is %e  F",C)
printf("\n charge on plates is %e  C",Q)
