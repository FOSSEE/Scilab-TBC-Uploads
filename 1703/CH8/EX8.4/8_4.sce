clc
//initialisation of variables
n= 0.0067 //poise
l= 10 //ft
w= 62 //lb/ft^3
d= 1 //in
Q= 2 //ft^2/sec
sm= 13.57
k1= 0.003
k2= 0.0725
r= 0.3
g= 32.2 //ft/sec^2
//CALCULATIONS
n1= n*30.48/453.6
v= Q*4/(60*%pi*(d/12)^2)
RN= v*(d/12)*w/n1
f= k1+(k2/RN^r)
hf= 4*f*l*v^2/(2*g*(d/12))
hl= hf*12/sm
//RESULTS
printf ('Head lost in inches of mercury = %.2f in',hl)
