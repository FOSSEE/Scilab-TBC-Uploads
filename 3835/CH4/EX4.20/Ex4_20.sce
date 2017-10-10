clear
//
r=100
c=50*10**-6
f=50
v=230
//case a
xc=-1/(314*c) //314 is omega
ir=v/r //with angle 0
ic=230/(xc) //with angle of 90 deg
i=((ir**2)+(ic**2))**0.5
printf("\n current with a lead of 57.5 is obtained as= %0.1f  A",i)
