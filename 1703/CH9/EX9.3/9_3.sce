clc
//initialisation of variables
d= 0.5 //in
a= 165 //degrees
W= 7.35 //lb
W1= 500 //lb
t= 148 //sec
g= 32.2 //ft/sec^2
w= 62.3 //lb/ft^3
//CALCULATIONS
Q= W1/(t*w)
v= Q*16*144/%pi
dv= v*(1-cosd(a))
F= dv*W1/(t*g)
r= W/F
k= (1-(W*t*g/(W1*v)))/cosd(a)
//RESULTS
printf ('k = %.3f ',k)
