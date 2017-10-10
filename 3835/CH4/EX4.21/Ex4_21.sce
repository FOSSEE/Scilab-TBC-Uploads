clear
//
r=100
l=0.1
c=150*10**-6
v=230
f=50
//case a
xl=314*l //at 90 deg
xc=1/(314*c) //at lag -90 deg
ir=v/r //at 0 deg
il=v/xl
ic=v/xc
//i=ir+ic+il-->2.3+j3.51
i=((2.3**2)+(3.51**2))**0.5
printf("\n current at 56.76 lead= %0.1f  A",i)
