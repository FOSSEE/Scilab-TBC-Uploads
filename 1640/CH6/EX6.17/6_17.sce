clc 
//initialisation of variables
b= 150 //ft
d= 12 //ft
N= 0.03
i= 1/10000
h= 10 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
A= b*d
P= b+2*d
m= A/P
v= m^(2/3)*1.49*i^0.5/N
A1= b*(h+d)
P1= b+2*(h+d)
m1= A1/P1
C1= 1.49*m1^(1/6)/N
v1= A*v/A1
s= (i-(v1^2/(C1^2*m1)))/(1-(v1^2/(g*(h+d))))
L= 2*h/s
//RESULTS
printf ('Length of back water = %.f ft ',L)
