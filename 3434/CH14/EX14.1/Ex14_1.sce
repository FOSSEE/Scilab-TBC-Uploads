clc
// given data
P=2000 // in rs
i=12 // interest rate in %
n=6 // time in years

F=P*(1+i/100.0)**n // Future value of investment

printf("The amount will be Rs %.0f",F)
