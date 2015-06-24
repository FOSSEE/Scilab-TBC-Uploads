clear

clc
//initialisation of variables
d= 8 //in
w= 2 //in
di= 12 //in
wi= 3 //in
a= 24 //degrees
p= 88 //per cent
a1= 85 //degrees
a2= 30 //degrees
p1= 94 //per cent
h= 180 //ft
d1= 18 //in
Cd= 0.92
g=32.2
n1= 111 //rpm
//RESULTS
r1= 1/tand(a)
r2= (1/tand(a1))+r1
r3= 2*r2/3
r4= (1/tand(a2))-r3
a3= atand(1/r4)
r5= sind(a3)
f= sqrt(g*h*(p/100)/(r1*r2+r3*r4+(r5^2/2)))
A= r2*f/(d/12)
N= (A*60/(2*%pi))-n1
W= (r1*r2+r3*r4)*f^2/g
Q= %pi*(d1/12)*(w/12)*Cd*f*62.08
whp= W*Q/550
bhp= p1*whp/100
//RESULTS
printf ('Speed = %.f rpm',N)
printf ('\n output horsepower = %.f hp',bhp)
