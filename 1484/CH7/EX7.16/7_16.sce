clc 
//initialisation of variables
w= 40 //ft
h= 5 //ft
P=50 // lb/ft^2
i= 1/6400
h1= 10 //ft
H= 100 //ft
g= 32.2 //ft/sec^2
//CAALCULATIONS
m= w*h/P
v= 140*sqrt(m*i)
v1= v*h/h1
h2= w*h1/(H-w)
a= v1^2/(140^2*h2)
s= (i-a)*1000/(1-(v1^2/(g*h1)))
dh= h1-s
//RESULTS
printf ('depth of water= %.3f ft',dh)
