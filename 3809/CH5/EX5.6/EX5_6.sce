//Chapter 5, Example 5.6

clc
//Initialisation'
L=10**-2                   //inductance
I=5                         //current in ampere


//Calculation
e=(1/2)*L*I**2               //stored energy

//Results
printf("Stored Energy = %d mJ",e*10**3)
