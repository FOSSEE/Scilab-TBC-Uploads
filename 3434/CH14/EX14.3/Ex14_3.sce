clc
//given data
F=100000 // final amount in rs
i=6 // interest rate in %
n=10 // time in years

P=F*(1/(1+i/100.0)**n) // initial amount

printf("The initial value is Rs %.2f",P)
