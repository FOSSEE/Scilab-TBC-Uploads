clc 
a = 15625 // annual requirement of parts
c = 12 // unit cost of part in Rs
r = 60 // ordering cost per lot in Rs
k = 1.2 // inventory carrying cost per unit 
n = sqrt(2*r*a/k) // economical order quantity
oc = r*a/n // ordering cost in Rs
cc = k*n/2 // carrying cost in Rs
tc = oc + cc // total inventory cost in Rs
printf("\n Economical order quantity = %d units\n order cost = Rs %d\n carrying cost = Rs %d\n Total inventory cost = Rs %d" , n , oc , cc , tc)
