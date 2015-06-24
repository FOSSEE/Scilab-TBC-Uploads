clc
//initialisation
r=0.02//m
t1=120+273//k
t2=100+273//k
si=5.67*10^-8
//CALCULATIONS
a=4*3.14*r*r
E=a*si*(t1^4-t2^4)
//results
printf(' \n rate at which energy must be supplied= % 1f watts',E)
