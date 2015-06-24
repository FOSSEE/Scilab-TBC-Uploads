

clc
//initialisation of variables
W= 1500 //lb-ft
d= 5 //ft
dw= 64 //lb/ft^3
D= 3.4 //ft
//CALCULATIONS
RG= (d/2)-(D/4)-(4*d^4/(64*d^2*(D/2)))
d1= D/2
T= W*RG/((d/2)-RG)
//RESULTS
printf (' pull on the chain = %.f Lb',T+20)
