clear
//
//given
e=3300
f=50
n1=600
n2=80
bm=1.2
h=425
l=1.6
density=7400
loss=1.5
//case a
phym=e/(4.44*f*n1)
csa=phym/bm
printf("\n cross sectional area= %e  m2",csa)
//case b
sv=(e*n2)/n1
printf("\n secondary voltage on no load= %0.1f  V",sv)
//case c
mc=(h*l)/n1
printf("\n primary magnetising current= %0.1f  A",mc)
//case d
v=l*csa
m=v*density
closs=m*loss
printf("\n core loss= %0.1f  W",closs)
