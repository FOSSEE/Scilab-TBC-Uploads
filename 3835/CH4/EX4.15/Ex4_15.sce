clear
//
r=10
c=10**-4
v=230
f=50
omega=314
//case a
xc=1/(omega*c)
printf("\n xc= %0.1f  ohm",xc)
//case b
zc=33.38 //zc=10-j31.85 into polar form is 33.38
i=v/zc
printf("\n i= %0.1f  A",i)
//case c
pf=r/zc
printf("\n pf")
//case d
//phase angle=cosinverse(0.3)=72.6
printf("\n phase angle=72.6")
//case e
v=r*i
printf("\n v= %0.1f  v",v)
v=xc*i
printf("\n v= %0.1f  v",v)
