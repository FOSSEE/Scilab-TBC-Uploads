clc 
//initialisation of variables
l= 91 //ft
w= 30 //ft
h= 6 //ft
W= 40 //tons
a= 3 //degrees
cg= 3 //ft
d= 4 //ft
W1= 60 //tons
cg1= 1 //ft
//CALCULATIONS
W2= (l*w*d*64/2240)-W1
y= (W2*(h/2)+W1*(cg+d))/(l*w*d*64/2240)
BG= y-(d/2)
BM= l*w^3/(12*l*w*d)
GM= BM-BG
dx= GM*l*w*d*64*tand(a)/(60*2240)
//RESULTS
printf ('maximum distance through which the load can be shifted= %.1f ft ',dx)
