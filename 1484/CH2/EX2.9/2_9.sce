clc 
//initialisation of variables
W= 2000 //tons
l= 250 //ft
w= 30 //ft
a= 1/15
W1= 50 //tons
h= 10 //ft
//CALCULATIONS
BG= (l*w^3*64/(W*2240*12))-(W1*h/(a*W))
//RESULTS
printf ('distance of the centre of gravity= %.2f ft ',BG) 
