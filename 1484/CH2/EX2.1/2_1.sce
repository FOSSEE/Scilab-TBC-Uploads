clc 
//initialisation of variables
l= 60 //ft
w= 10 //ft
h= 5 //ft
t= 3/16 //in
sp = 7.75
H= 4 //ft
w1= 62.4 //lb/ft^3
y= 4 //ft
//CALCULATIONS
V= (l*w+2*w*h+2*l*h)*t/12
W= V*w1*sp
x= W/(w1*l*w)
W1= H*l*w*w1
dW= (W1-W)/2238
//RESULTS
printf ('weight of water displaced= %.1f tons',dW)
