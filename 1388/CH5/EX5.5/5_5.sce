clc
//initialisation of variables
P2= 760 //mm of Hg
m2= 2.18*10^-3
v= 23.5 //ml
p= 21
p1= 79
//CALCULATIONS
K= P2*55.5/m2
K1= 760*55.5*22.4*10^3/v
m= 55.5*(p*760/(100*K))+55.5*(p1*760/(100*K1))
//RESULTS
printf (' molality = %.2e gms',m)
