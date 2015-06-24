clc
//given data
A=500 // annual amount invested each year in rs
i=9 // interest rate in %
n=6 // time in years

F=A*(((1+i/100.0)**n)-1)/(i/100.0) // future amount in rs

printf("The Future amount will be Rs %.0f ",F)
