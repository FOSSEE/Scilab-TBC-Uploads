clc
//initialisation of variables
y0=30000//in
y1=172000//in
y2=292000//in
a=172//ft
p=30//ft
y=292//ft
q=322000//ft
g=313//ft
n=0.05//ft
d=-2.442//ft
//CALCULATIONS
L=[2*p*a*y2-(a)^2*q]/[p*y-(a)^2]//moreover
m=(g-p)/p//ft
N=n*d//in
Y=g/[1+m*(N)]//in
//RESULTS
printf('the saturation populations=% f moreover',L)
printf('the coefficients=% f in',N)
printf('the equation of a logistic curve=% f in',Y)
