
clc
//initialisation of variables
Hd=100//ft
k=8//ft
ld=100//ft
g=32.2//ft/sec^2
d=6//ft
d1=3//ft
r=1
//CALCULATIONS
Ha=Hd+34-k
w=sqrt(Ha*g*d1*d1/(ld*d*d))
n=w*60/(2*%pi)
//RESULTS
printf ('\n maximum speed= %.1f r p m',n)
 
