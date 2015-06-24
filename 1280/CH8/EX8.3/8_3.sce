clc
//initialisation of variables
d= 3 //in
P= 2000 //psi
s= 20 //strokes
//CALCULATIONS
Cl= s*d/2
F= P*%pi*d^2/4
stl= (Cl-40)/10
//RESULTS
printf ('length of the stop tube= %.f in',Cl)
printf (' \n thrust on the rod= %.f lb',F+3)
printf (' \n Stop Tube length= %.f stl',stl)
