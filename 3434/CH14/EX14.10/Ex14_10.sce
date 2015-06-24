clc
// given data

g=0.2 // annual gas price increase rate
i=10/100.0 // discount rate 
n=15 // time in years
A1=350*8 // payment at end of 1st year in lakhs rs

Pgg=(A1/(i-g))*(1-((1+g)/(1+i))**n) // present worth in Rs

printf("The present worth of saving is Rs %.0f",Pgg)
