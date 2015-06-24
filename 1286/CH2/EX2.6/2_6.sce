clc
//initialisation
l=3//m
t1=0//c
t2=40//c
f=0.000012//1/c
b=0.000018//1/c
y=2.1*10^11//N/m^2
a=(3.14*(0.6*10^-3)^2)/4///m
//CALCULATIONS
lb40=l*(1+(b*(t2-t1)))
lf40=l*(1+f*(t2-t1))
dl=lb40-lf40
F=y*a*dl*0.01/l
//results
printf(' extra tension of the wire= % 1f newton',F)
