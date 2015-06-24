clc
p = 200000 // present worth in Rs
i = 10 // annual interest rate
i = 10/100
n = 20 // number of years
a1 = (p*i)/((1+i)^n-1) // annual investment using sinking fund factor in Rs
a2 = (p*i*(i+1)^n)/((i+1)^n-1)// annual investment using capital recovery factor in Rs
printf("\nAnnual investment using sinking fund factor = Rs %d /- per year" , a1)
printf("\nAnnual investment using capital recovery factor = Rs %d /- per year" , a2)
// Answers vary due to round off error
