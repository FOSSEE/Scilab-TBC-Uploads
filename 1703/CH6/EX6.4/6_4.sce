clear
clc
//initialisation of variables
l= 1.5 //miles
d= 18 //in
Q= 12.4 ///cusecs
h= 130 //ft
r= 169
r1= 338
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
f= h*10*l^5/(l*5280*Q^2)
R= sqrt(1.5*r1-r)
d= sqrt(l^2/R*144)
v= sqrt(h*g*2/(r/R^2+1))
HP= w*0.25*%pi*(d/12)^2*v^3/(550*2*g)
//RESULTS
printf ('f = %.3f ',f)
printf ('\n Diameter of jet d = %.2f in',d)
printf ('\n Water h.p = %.1f h.p',HP)


//The answer is a bit different due to rounding off error in textbook

