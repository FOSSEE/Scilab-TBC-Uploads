clear
//
v=230
f=50
L=50*10**-3
r=10
//case a
xl=2*3.14*f*L
z=complex(r,xl)
//the value of z in polar form is 18.62 ohm
z=18.62
i=v/(z)
printf("\n i= %0.1f  A",i)
//case b
//phy=taninverse(xl/r)=57.52 lag
printf("\n phase angle of current=57.52 lag")
