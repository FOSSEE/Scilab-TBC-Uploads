clc
//initialisation
t1=5.6//c
t2=2.8//c
t3=0.7//c
d1=2//m
d2=4//m
d3=8//m
w=(2*3.14)/365
//CALCULATIONS
d=(log(t1/t2))/(d2/d1)
k=w*1000/(d*d)
//results
printf(' \n diffusity= % 1f m^2 per day',k)
