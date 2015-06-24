
clc
//initialisation of variables
d= 1 //in
v= 95 //ft/sec
F= 173.2 //lb
A= 163 //degrees
H= 500 //ft
Cv= 0.97
d1= 1.33 //ft
r= 0.47
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= w*%pi*v/(144*4)
k= (F-v)/(v*cosd(180-A))
v1= Cv*sqrt(2*g*H)
W= v1*w*d^2*%pi/(4*144)
N= 60*r*v1/(%pi*d1)
whp= (v1-v)*(1+k*cosd(180-A))*v1*2/550
Ns= N*whp^0.5/H^1.25
//RESULTS
printf ('specific speed = %.2f r.p.m',Ns)
