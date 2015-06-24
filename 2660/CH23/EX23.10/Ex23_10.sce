clc
a = 1000000 // annual requirement of parts
r = 32 // ordering cost per lot in Rs
k = 4 // inventory carrying cost per unit 
d1 = 250 // number of working days
d2 = 2 // days for safety stock
d3 = 4 // lead time in days
eoq = sqrt(2*r*a/k) // economical order quantity
oc = r*a/eoq // ordering cost in Rs
cc = k*eoq/2 // carrying cost in Rs
tc = oc + cc // total inventory cost in Rs
ss = a*d2/d1 // safety stock
ro_p = ss+eoq*d3 // reorder point
printf("\n Economic order qunantity = %d components\n Re-order point = %d components" , eoq ,ro_p)
