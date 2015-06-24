
clear   
clc
//initialisation of variables
H= 950 //lb/in^2
l= 5 //miles
d= 4 //in
f= 0.0075
p= 92 //per cent
hp= 200 //h.p
g= 32.2 //ft/sec62
w= 62.4 //lb/ft^3

//CALCULATIONS
H1= H*2.3
H2= H1*100/p
Hf= H2-H1
v= sqrt(2*g*(d/12)*Hf/(4*f*l*5280))
n= hp/(w*v*(H1/550)*%pi*(d/12)^2/4)
//RESULTS
printf ('number of pipes required = %.f',n)

//ANSWER in textbook is wrong
