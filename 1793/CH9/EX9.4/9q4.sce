clc
//initialisation of variables
C0= 0.357
H1= 30.5 //ft
H2= 5 //ft
w= 62.4 // lb/ft^3
D= 20
g= 112 // lb/ft^3
//calculations
G= g-w
FS= D*G/(C0*w*(H1-H2))
//results
printf ('safety factor = % 2f ',FS)
