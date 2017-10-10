clear
//
//given
a=50*(10**-4)
e=400
f=50
n1=500
n2=1000
//phym=bm*a
//case a
//e=4.44*f*n*bm*a
bm=(e)/(4.44*f*n1*a)
printf("\n bm= %0.1f  Wb/m2",bm)
//case b
e2=4.44*f*n2*bm*a
printf("\n e2= %0.1f  V",e2)
