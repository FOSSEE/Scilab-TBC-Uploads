clc
//initialisation of variables
W1= 3 //lb
W2= 5 //lb
x1= 8 //in
x2= 7 //in
y1= 2 //in
y2= 5 //in
z1= 6 //in
z2= 4 //in
//CALCULATIONS
W= W1+W2
x= (W1*x1+W2*x2)/W
y= (W1*y1+W2*y2)/W
z= (W1*z1+W2*z2)/W
//RESULTS
printf ('x = %.2f in',x)
printf (' \n y=%.2f in',y)
printf (' \n z=%.2f in',z)
