clc
//initialisation of variables
W= 0.0020 //M
W1= 0.0010 //M
W2= 0.0040 //M
T= 1.86 //C
n= 1 //moles
n1= 1 //moles
n2= 2 //moles
a= 1.122
//CALCULATIONS
dT= T*(W+W1+W2)
I= 0.5*(n^2*W+n1^2*W2+n2^2*W1)
g= 1-(2*a*I^1.5/(3*(W+W1+W2)))
dT1= g*dT
//RESULTS
printf (' lowering the freezing point = %.4f C ',dT1)
