
clc
//initialisation of variables
d= 6 //ft
l= 4 //ft
W= 2500 //lb
Wt= 500 //lb
cg= 1.5 //ft
d1= 64 //lb/ft^3
//CALCULATIONS
w1= W+Wt
V= w1/d1
D= V/(%pi*(d^2/4))
hb= D/2
BG= (%pi*d^4)/(64*V)
hg= BG+hb
x= ((w1*hg)-(W*cg))/Wt
//RESULTS
printf (' Maximum height c.g above the bottom= %.2f ft ',x)
