clear
//
v=200
f=50
r=20
vr=100
vc=144
vl=150
//case a
//from eqn ((vr**2+vl*cos1(angle))**2)+((vl*sin(angle))**2)=v**2
//on substituting values in the above eqn the value of angle can be found by isolating cos1
//angle=75.52
cos1=0.25
pf=(vr+vl*cos1)/(v)
printf("\n pf")
//case b
i=vr/r
power=i**2*r
printf("\n power consumed= %0.1f  w",power)
//case c
power=vl*i*cos1
printf("\n power consumed in choke oil= %0.1f  W",power)
