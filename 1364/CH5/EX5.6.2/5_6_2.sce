clc
//initialisation of variables
A= 9 //ft^2
A1= 50000 //yd^2
l= 12 //ft
H1= 2 //ft
H2= 3 //in
g= 32.2 //ft^2/sec
//CALCULATIONS
t= (A*A1*2/(0.4*sqrt(2*g)*l))*((H2/12)^-0.5-(H1)^-0.5)
//RESULTS
printf (' time required = %.f sec ',t)
