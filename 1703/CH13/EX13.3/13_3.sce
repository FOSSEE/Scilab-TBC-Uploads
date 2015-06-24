clc
//initialisation of variables
bhp= 1500 //h.p
e= 0.86
h1= 300 //ft
h2= 15 //ft
w= 62.4 //lb/ft^3
t= 30 //days
t1= 10 //hr
t2= 3 //months
f= 0.005
l= 1000 //ft
//CALCULATIONS
WHP= bhp/e
Ha= h1-h2
W= WHP*550
Q= W/(Ha*w)
Qt= Q*36009*t1*t*t2
Qp= Qt/(3600*t*45)
d= (f*l*(Q/2)^2/(t1*h2))^(1/5)
//RESULTS
printf ('Diameter = %.2f ft ',d)
