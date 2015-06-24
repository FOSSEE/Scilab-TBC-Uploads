clc
//initialisations
t2=162//c
t1=62//c
l=0.15//m
d=0.02//m
k=226//watt per kelvin metre
//CALCULATIONS
r=d/2
a=3.14*r*r
p=2*3.14*r
x=(log(t2/t1))/l
e=(x*x*k*a)/p
//results
printf(' \n surface emissivity of rod= % 1f ',e)
