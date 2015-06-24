clc 
//initialisation of variables
h= 42 //ft
w= 25 //ft
d= 8 //ft
W= 150 //lb/ft^3
w1= 62.4 //lb/ft^3
//CALCULATIONS
W1= W*(h*d+(h*(w-d)/2))
P= w1*h*(h/2)
R= sqrt(W1^2+P^2)
o= atand(P/W1)
AE= (d*h*(d/2)+(w-d)*h*(d+(w-d)/3)/2)/(d*h+h*(w-d)/2)
EF= 14*P/W1
AF= EF+AE
AH= w/2
e= AF-AH
BS= W1*e*AH/(w^3/12)
DS= W1/w
Smax= BS+DS
Smin= DS-BS
//RESULTS
printf ('S max = %.f lb/sq ft ',Smax)
printf ('\n S min = %.f lb/sq ft ',Smin)
