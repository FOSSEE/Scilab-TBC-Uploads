clc
//initialisation of variables
d= 3 //in
d1= 1.5 //in
F= 7500 //lb
//CALCULATIONS
A1= (%pi/4)*(d^2-d1^2)
P= F/A1
//RESULTS
printf ('pressure in the cylinder = %.f psi',P-1)
