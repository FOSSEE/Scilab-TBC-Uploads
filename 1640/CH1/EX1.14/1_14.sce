
clc 
//initialisation of variables
w= 62.4 //lb/ft^3
h= 4 //ft
b= 6 //ft
sg= 1.45
h1= 5 //ft
a= 90 //degrees
//CALCULATIONS
P1= w*sg*h*b*(h1+(h/2))
P2= w*h*b*(h/2)
Pr= P1-P2
hup= ((b*h^3/12)*(sind(a))^2/(h*b*(h1+(h/2))))+(h1+(h/2))
x1= h+h1-hup
hd= h*2/3
x2= h-hd
x= (P1*x1-P2*x2)/Pr
d= h1+h-x
F= Pr*x/4
//RESULTS
printf ('P resultant = %.f lb ',Pr)
printf ('\n depth of centre of pressure = %.3f ft ',d)
printf ('\n force F required to act horizontally at the top of gate = %.f lb ',F)
//The answer given in texxtbook is wrong. Please check using a calculator.
