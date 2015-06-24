
clc
//initialisation of variables
u= 10*%pi //ft/sec
u1= 5*%pi //ft/sec
a= 20 //degrees
A= 300 //r.p.m
v= 10 //ft/sec
g= 32.2 //ft/sec^2
wi= 2 //ft
d= 6 //in
w1= 62.4 //lb/ft^3
//CALCULATIONS
w= v/tand(a)
a1= atand(v/(u-w))
b= atand(v/u1)
W= u*w/g
A1= %pi*wi*d/12
Q= A1*v
WHP= W*Q*w1/550
//RESULTS
printf ('Blade angle at inlet is given by = %.2f degrees',a1)
printf ('\n Blade angle at inlet is given by = %.2f degrees',b)
printf ('\n Water horse power = %.1f h.p',WHP)
