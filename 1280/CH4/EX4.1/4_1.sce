clc
//initialisation of variables
d= 4 //in
p= 20 //percent
d1= 0.140
//CALCULATIONS
Gd= d-2*((100-20)*d1/100)
Gw= d1+2*(p*d1/100)
//RESULTS
printf ('Groove diameter = %.3f in',Gd)
printf (' \n Groove width = %.3f in',Gw)
printf (' \n outside diameter = %.f in',d)
