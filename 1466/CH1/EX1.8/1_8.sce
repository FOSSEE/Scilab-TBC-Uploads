clc
//initialisation of variables
h= 10 //ft
h1= 3 //ft
w= 62.4 //lbf/in^2
//CALCULATIONS
H= h+(h1/2)
A= h1^2
P= A*H*w
//RESULTS
printf (' total pressure on the sluice  = %.f Lb',P)
