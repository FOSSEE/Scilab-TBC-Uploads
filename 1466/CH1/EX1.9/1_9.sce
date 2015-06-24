

clc
//initialisation of variables
clear
d= 6//ft
x= 4 //ft
w= 62.4 //lbf/in^2
//CALCULATIONS
Ig= %pi*d^4/64
A= %pi*d^2/4
Io= Ig+A*x^2
h= Io/(A*x)
P= w*A*x
//RESULTS
printf ('Depth of centre of pressure  = %.2f ft',h)
printf (' \n Total pressure on plate  = %.f Lb',P-7)
