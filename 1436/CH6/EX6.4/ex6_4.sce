// Example 6.4, page no-373
clear
clc
//(a)
a=5*10^-4
l=8
dens=6*1000
w=a*l*dens
printf("(a)\nWeight of the displacer if weighed in air = %d kg",w)
//(i)
sbr1=23
wloss1=w-sbr1
L1=wloss1/(1000*a)
printf("\n(i)\tL1=%dm",L1)
//(ii)
sbr2=22
wloss2=w-sbr2
L2=wloss2/(1000*a)
printf("\n(ii)\tL2=%dm",L2)
//(iii)
sbr3=21
wloss3=w-sbr3
L3=wloss3/(1000*a)
printf("\n(iii)\tL3=%dm",L3)

//(b)
level=8
wt=a*level*1000
spring=w-wt
printf("\n(b):when the tank is full\nSpring Balance reading = %d kg",spring)
