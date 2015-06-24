clc
//initialisation of variables
clear
vo= 10 //ft/sec
a= 0.5 //ft^-1
b= 1 //ft
x= -2 //ft
y= 2 //ft
b1= 2
a1= 3/5 //ft
//CALCULATIONS
Vx= vo/(a*x^2+b)
Vy= -2*a*b*vo*x*y/(a*x^2+b)^2
V= sqrt(Vx^2+Vy^2)
fx= -2*a*b^2*vo^2*x/(a*x^2+b)^3
fy= 2*a*b^2*vo^2*y*(b-a*x^2)/(a*x^2+b)^4
f= sqrt(fx^2+fy^2)
r= b1^2/a1
f1= f*r
//RESULTS
printf ('Vx = %.2f ft/sec',Vx)
printf ('\n Vx = %.2f ft/sec',Vy)
printf ('\n V = %.2f ft/sec',V)
printf ('\n fx = %.2f ft/sec^2',fx)
printf ('\n fy = %.2f ft/sec^2',fy)
printf ('\n f = %.2f ft/sec^2',f)
printf ('\n r = %.2f in the present case',r)
printf ('\n f1 = %.2f ft/sec^2',f1)
