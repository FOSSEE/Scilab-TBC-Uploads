clc 
//initialisation of variables
w= 62.4 //lb/ft^3
x=8 //ft
A= 16 //ft^2
X= 2.5 //ft
X1= 0.66 //ft
x1= 3.834 //ft
x2= 2.182 //ft
//CALCULATIONS
P= w*x*A
y= A/3
P1= w*x*A*0.5*X1
R= sqrt(P1^2+P^2)
m= P1/P
X2= x1-x2
C= ((2/3)*A)-m*X
Y= m*X2+ C
//RESULTS
printf ('Water pressure on vertical face = %.f lbs',P)
printf ('\n pressure which acts at the base = %.2f ft',y)
printf ('\n Resultant = %.f lbs',R)
printf ('\n x coordinate of the resultant = %.3f ft',X2)
printf ('\n y coordinate of the resultant = %.3f ft',Y)
