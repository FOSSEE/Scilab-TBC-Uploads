clc
//given data
F=12000 // Total amount in rs
i=9 // interest rate in %
n=4 // time in years

A=F*(i/100.0)/(((1+i/100.0)**n)-1) // 

printf("The amount deposited each year should be Rs %i",A)
