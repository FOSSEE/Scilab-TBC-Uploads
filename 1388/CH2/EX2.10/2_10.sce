clc
//initialisation of variables
g= 10 //gm
d= 1.038 //gm/mol
M= 100 //gm
x= 66.412
y= 0.127
z= 0.038
l= 20 //cm
//CALCULATIONS
p= g/(M/d)
X= x+y-z
ar= X*l*p/10
//RESULTS
printf (' angle ofrotation= %.2f degrees ',ar)
