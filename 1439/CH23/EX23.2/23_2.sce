clc
//initialisation of variables
h= 6.62*10^-27 //ergs/sec
c= 3*10^10 //cm/sec
wl= 4358 //A
I= 14000 //ergs sec^-1
p= 80.1 //percent
t= 1105 //sec
n= 0.075 //millimole
//CALCULATIONS
E= h*c/(wl*10^-8)
q= I*p*t/(100*E)
M= 6*10^23*n*10^-3
P= M/q
//RESULTS
printf ('quantum yield = %.1f ',P)
