clc
//initialisation of variables
l= 100 //ft
w= 62.4 //lbf/ft^3
d= 4 //in
v= 15 //ft/sec
p= 53//lbf/in^2
p1= 33 //lbf/in^2
a= 45 //degrees
//CALCULATIONS
W= w*(%pi/4)*d^2*l/144
k= w*v^2/(32.2*144)
F1= p*(%pi/4)*d^2
F2= p1*(%pi/4)*d^2
F= F2*cosd(a)
F3= F1-F
F4= W-F
//RESULTS
printf (' horizontalforce = %.f lbf',F3-1)
printf (' \n vertical force = %.f lbf',F4-10)
