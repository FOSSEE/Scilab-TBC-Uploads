clear
//
r=1500
l=0.2
v=1.5
f=15000
//case a
//p=1/0.2c
p=(4*3.14*3.14*f**2)+(r**2)/(l**2)
c=1/(0.2*p)
printf("\n c= %e  F",c)
//case b
z=l/(c*r)
printf("\n z= %0.1f  ohm",z)
//case c
i=v/(z)
printf("\n i= %0.1f  A",i)
