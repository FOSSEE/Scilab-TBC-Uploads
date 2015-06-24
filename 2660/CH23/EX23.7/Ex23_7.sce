clc
a = 12000 // annual requirement
c = 5 // unit cost of part
s = 60 // set up cost per lot
p = 18750 // production rate per year
i = 20 // inventory carrying cost
i = 20/100 
k = i*c // carrying cost per unit per year
n = sqrt(2*s/(1/a-1/p)*k) // Most economic lot size
printf("\n Most economic lot size = %d parts" , n)
