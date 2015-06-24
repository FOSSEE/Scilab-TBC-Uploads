clc 
//initialisation of variables
hp= 40 //hp
w= 62.4 //lb/ft^3
d= 4 //in
k= 0.98
v= 2.395 //ft/sec
W= 120 //tons
//CALCULATIONS
hv= hp*550/(w*(%pi*(d/12)^2/4)*k)
H= hv/v
d= sqrt(4*W*2240/(w*H*%pi))
//RESULTS
printf ('diameter = %.2f ft',d)
