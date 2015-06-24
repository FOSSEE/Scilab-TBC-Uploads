clc
a = 8000 // annual requirement of parts
c = 60 // unit cost of part in Rs
r = 150 // ordering cost per lot in Rs
i = 30 // annual carrying charges of average inventory
i = 30/100 
k = i*c // carrying cost per unit per year
n = sqrt(2*r*a/k) // most economical order quantity
printf("\n Most economical ordering quantity = %d units" , n)
 
