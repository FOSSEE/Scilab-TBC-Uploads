clc
//initialisation of variables
w= 2 //ft
F= 3
d= 2 //ft
g= 32.2 //ft/sec^2
w1= 62.3 //lbf/ft^3
//CALCULATIONS
r= 0.5*(sqrt(1+8*F^2)-1)
y1= w/r
dy= w-y1
h1= dy^3/(4*w*y1)
u1= F*sqrt(g*y1)
W= w1*y1*u1*d*h1/550
//RESULTS
printf (' Horse-power dissipated = %.2f h.p',W)

