clc
//initialisation of variables
h= 6 //in
x1= 7 //in
x2= 1 //in
x3= 2 //in
P= 600 //lb
//CALCULATIONS
By= P*(x1+x2+x3)/(x1+x2)
Bx= By*(x1+x2)/h
Fx= Bx
V= By-P
M= -P*(x2+x3)+By*x2
S1= -Fx/(x3*h)
I= x3*h^3/12
S2= -M*12*(h/2)/I
Scmax= S1-S2
Stmax= S1+S2
//RESULTS
printf ('Maximum tensile stress at = %.1f psi',Scmax)
printf (' \n Maximum compressive stress at = %.1f psi',Stmax)
