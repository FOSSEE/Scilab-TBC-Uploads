
clc
//initialisation of variables
N= 428.6 //r.p.m
D= 5 //ft
w= 62.4 //lb/ft^3
hp= 16800 //hp
Qw= 435 //cuses
g= 32.2 //ft/sec^2
v= 32 //ft/sec
v1= 24 //f/sec
H= 200 //ft
lh1= 0.32 //ft lb/lb
//CALCULATIONS
u= %pi*D*N/60
W= hp*550/(Qw*w)
w= W*g/u
a= atand(v/w)
va= sqrt(w^2+v^2)
b= atand(v/(u-w))
B= 180-b
vew= va^2/(2*g)
ve1w= v1^2/(2*g)
LH= H+vew-ve1w-W+lh1
//RESULTS
printf ('angle = %.2f degrees',a)
printf ('\n Absolute velocity at entry to runner = %.1f ft/sec',va)
printf ('\n angle = %.2f degrees',b)
printf ('\n Loss of head in runner = %.2f ft lb/lb',LH)
