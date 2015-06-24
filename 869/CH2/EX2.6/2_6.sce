clc
//initialisation of variables
F= 100 //lb
x1= 6 //in
x2= 8 //in
x3= 2 //in
//CALCULATIONS
xab= sqrt(x1^2+x2^2)
d= x3*x1/xab
M1= F*d
Fx= F*x2/xab
Fy= F*x1/xab
M2= Fy*xab-Fx*x1
M3= Fy*x3
//RESULTS
printf ('M1 = %.f lb.in',M1)
printf (' \M2=%.f lb.in',M2)
printf (' \M3=%.f lb.in',M3)
