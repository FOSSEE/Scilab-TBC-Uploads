
clc 
//initialisation of variables
d= 6 //in
W= 1100 //lbs/in^2
w= 62.4 //lbs/ft^3
f= 0.01
v= 3 //ft/sec
W2= 1000 //lbs/in^2
g=32.2
//CALCULATIONS
W1= w*%pi*(d/12)^2*v/4
ph= W2*144/w
HP= W1*ph/550
e= W2/W
hf= W2*144/(w*10)
l= hf*(d/12)*2*g/(4*f*v^2)
//RESULTS
printf ('l= %.f ft',l) 
