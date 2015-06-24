clc
//initialisation of variables
g= 32.2 //ft/sec^2
w= 62.3 //lbf/ft^3
p= 40 //lbf/in^2
k= 0.44
d= 2 //in
//CALCULATIONS
Q= (%pi*(d/2)^2/144)*sqrt(2*g*p*144/(w*0.981))
P= w*Q^3*(144/%pi)^2/(2*g*550)
//RESULTS
printf ('discharge rate = %.2f ft^3/min',Q)
printf ('\n Power of jet = %.2f h.p',P)
