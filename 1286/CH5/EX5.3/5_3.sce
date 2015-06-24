clc
//initialisation
e=3//v
i=2//amp
e1=3.75//v
i1=2.5//amp
t=2//c
m=30//gm/min
m1=48//gm/min
//CALCULATIONS
p=(e*i-e1*i1)/(t*(m-m1)/44.444)
//results
printf(' J= % 1f j/cal',p)
