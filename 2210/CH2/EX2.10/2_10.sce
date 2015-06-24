//Chapter 2, Problem 10
clc
ref=0.1                          //reflection coefficient

//calculation of voltage standing wave ratio
Vswr=(1+ref)/(1-ref)

printf("VSWR = %.2f",Vswr)
