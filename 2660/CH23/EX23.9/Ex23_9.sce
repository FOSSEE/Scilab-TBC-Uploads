clc
// case a
a = 50 // annual requirement of parts in tonnes
c = 500 // unit cost of part in Rs
r = 100 // ordering cost per order in Rs
i = 20 // inventory carrying cost 
i = i/100
d = 2 // discount of purchase cost in percent
k = i*c // inventory carrying cost per unit 
n1 = sqrt(2*r*a/k) // economical order quantity
oc1 = r*a/n1 // ordering cost in Rs
cc1 = k*n1/2 // carrying cost in Rs
tc1 = oc1 + cc1 // total inventory cost in Rs
// case b
n2 = 25 // order per lot
oc2 = r*a/n2 // ordering cost in Rs
cc2 = k*n2/2 // carrying cost in Rs
tc2 = oc2 + cc2 // total inventory cost in Rs
i = tc2-tc1 // increase in cost in Rs
d_o = d*c*a/100 // discount offered
printf("\n Increase in inventory cost = Rs %d\n Discount offered = Rs%d",i,d_o)
disp("offer is worth accepting")
