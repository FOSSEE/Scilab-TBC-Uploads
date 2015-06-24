clc
s = 600 // set up cost per lot in Rs
c = 6 // unit cost of item in Rs
a = 100000 // annual demand for item
i = 25 //  annual carrying charges of average inventory
i = 25/100 
k = c*i // carrying cost factor in unit/year
n = sqrt(2*s*a/k) // most economic lot size
tc = a*c + s*a/n + k*n/2 // total cost in Rs
printf("\n Total cost = Rs %0.2f" , tc)
//  'Answers vary due to round off error'
