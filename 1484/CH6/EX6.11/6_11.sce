
clc 
//initialisation of variables
p= 15.6 //lbs/in^2
la= 250 //ft
lb= 200 //ft
lc= 120 //ft
w= 62.4 //lbs/ft^3
p1= 93.6 //lbs/in^2
l2= 600 //ft
l3= 100 //ft
l4= 300 //ft
ph= 95 //ft
//CALCULATIONS
H1= ((p*144)/w)+la
H2= ((p1*144)/w)+(la/2)
s= (H2-H1)/(l4+l2+l3)
h1= l3*s
h2= l2*s
h3= l4*s
H= h1+h2+h3
P= ph*w/144
//RESULTS
printf ('pressure head for 95ft= %.2f lbs/in^2',P)
