clc
//initialisation of variables
b= 350 //ft
d= 12 //ft
L= 46 //ft
Ac1= 500*80*12 //ft^3
Ac2= 350*12*9 //ft^3
//CALCULATIONS
Ic= (b*d^3)/12
A= b*d
Io= Ic+A*L^2
I= 2*Io
V= Ac1+2*Ac2
BM= I/V
//RESULTS
printf ('displacement of body= %.1f ft',BM)
