clc
//initialisation
cu=104
w=0.14
l1=50//cm
t=0.0001//m
t1=100//c
t2=0//c
//CALCULATIONS
x=cu*t*100/w
l=l1+2*x
dt=t1-t2
dg=dt/l
d1=x*dg
d2=t1-d1
//results
printf(' \n temperature gradient= % 1f c/cm',dg)
printf(' \n  temperature of one end= % 1f c',d1)
printf(' \n temperature of other end= % 1f c',d2)
