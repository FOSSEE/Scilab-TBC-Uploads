clc 
//initialisation of variables
l= 5 //ft
h= 20 //in
n= 1/15
AG= 50 //in
x= 30 //in
w= 62.4 //lb/ft^3
//CALCULATIONS
AG1= AG/(1+n)
G1G2= n*x/(1+n)
W= l^2*w*(l/2)
h1= 32 //in
BK= h1/2
GK= 10 //in
G1K= (AG+GK)-AG1
BG1= BK-G1K
BM= (l^4/12)*2*12/(l^3*BK*n)
G1M= BM+BG1
o= atand(G1G2/G1M)
//RESULTS
printf ('angle through which the cube will tilt = %.f degrees ',o)
