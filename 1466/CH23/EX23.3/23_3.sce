

clc
//initialisation of variables
n=400//rpm
h1=20//ft
h2=60//ft
r=4
//CALCULATIONS
n1=n*(sqrt(h2/h1))/r
p=((h2/h1)^2.5)*h1*n*n/(n1*n1)
ratio=r*r*sqrt(h2/h1)
//RESULTS
printf ('Horse power delivered = %.f r.p.m',n1)
printf ('\n ratio of quantities discharged = %.1f ',ratio)
