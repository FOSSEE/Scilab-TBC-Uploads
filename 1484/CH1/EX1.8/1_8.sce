clc
//initialisation of variables
w= 3 //ft
h= 4 //ft
ht= 30 //ft
W= 62.4 //ft^3
//CALCULATIONS
Ap= w*h
X= ht+(h/2)
P= Ap*X*W
I0= (w*h^3/12)+Ap*X^2
H= I0/(Ap*X)
//RESULTS
printf (' total pressure on the gate = %.2f ft',H)
