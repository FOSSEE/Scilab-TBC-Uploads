clc
//initialisation of variables
p=40//ft
d=56//ft
d1=140//ft
p1=30//ft
w=3.28*10^-4//fps
//CALCULATIONS
Q=w*(p/d1)*2*d*p//cfs
q=Q/p//cfs
K=w*(p/d1)//fps
x0=q/(2*%pi*K)//ft
Z=2*%pi*x0//ft
//RESULTS
printf('the yield of the well if the coefficient of permeability=% f ft',x0)
printf('the distance of the point of stagnation =% f ft',Z)
