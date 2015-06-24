clc
//initialisation of variables
w= 3 //ft
h= 4 //ft
ht= 30 //ft
W= 62.4 //ft^3
x= 2.22 //in
x1= 4.5 //in
//CALCULATIONS
Ap= w*h
X= ht+(h/2)
P= Ap*X*W
T= P*x/x1
T1= P-T
//RESULTS
printf (' tension devoloped in the top bolt = %.f lbs',T)
printf (' \n tension devoloped in the bottom bolt = %.f lbs',T1)
