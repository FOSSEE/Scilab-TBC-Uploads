clc

// given data

P=10.0 // in lakh rs
i=12.25 // interest rate in %
F=20 // final amount in lakh rs

n=log(F/P)/log(1+i/100.0) // time in years

printf("The number of years is %.2f years",n)


