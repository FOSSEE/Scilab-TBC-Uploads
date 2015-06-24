
clc 
//initialisation of variables
D= 64 //lb/ft^3
d= 6 //ft
l= 10 //ft
W= 2 //tons
//CALCULATIONS
V= W*2240/D
h= V/(%pi*d^2/4)
BM= d^2/(16*h)
P= -(sqrt(64*BM*2*10*%pi*(22400-%pi*d^4))-W*22400)/10
//RESULTS
printf ('Minimum pull required= %.f lbs ',P+3) 
