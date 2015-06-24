clc
//initialisation of variables
hi= 2 //Btu/hr ft^2 F
l= 6 //in
k= 0.5 //Btu/hr ft F
h0= 10 //Btu/hr ft^2 F
ti= 70 //F
t0= 20 //F
A= 1 //ft^2
//CALCULATIONS
U= 1/((1/hi)+((l*0.5)/(6*k))+(1/h0))
q= U*A*(ti-t0)
//RESULTS
printf ('Thermal transmittance= %.2f ft^2 F',U)
printf (' \n Heat transfer rate= %.1f Btu/hr',q)
