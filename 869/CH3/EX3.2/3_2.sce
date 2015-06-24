clc
//initialisation of variables
W4= 3 //lb
W3= 5 //lb
W2= 2 //lb
W1= 6 //lb
x1= 10 //in
x2= 4 //in
z= 5 //in
//CALCULATIONS
W= W1+W2+W3+W4
x= (W1*0+W2*0+W3*x2+W4*x1)/W
z= (W1*z+W2*0+W3*0+W4*0)/W
//RESULTS
printf ('x = %.2f in',x)
printf (' \n z=%.2f in',z)
