
clc
//initialisation of variables
d=6//in
d1=3/4//ft
g=32.2//ft/sec^2
p=800//lb/in^2
v1=2//ft/sec
//CALCULATIONS
v=v1*d*d/(d1*d1)
vhead=v*v/(2*g)
p1=p+(62.4*vhead/144)
lo=p1*%pi*d*d/4
V=sqrt(p1*144*2*g/(62.4*(d/d1)^4))
//RESULTS
printf ('\n V= %.2f ft/sec',V)
