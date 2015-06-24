
clc
//initialisation of variables
W= 1350 //tons
m= 20 //tons
x= 22.5 //ft
s= 0.0875
msw= 64 //lb
k= 0.65 
l= 200 //ft
b= 28 //ft
l1= 5 //ft
//CALCULATIONS
GM= m*x/(s*W)
V= W*2240/msw
I= k*l*b^3/12
BM= I/V
PositionOfM= BM-l1
PositionOfG= GM-PositionOfM
//RESULTS
printf ('Position of M= %.2f ft above water-line',PositionOfM+0.02)
printf ('\n Position of G= %.2f ft below water-line',PositionOfG-0.02)
