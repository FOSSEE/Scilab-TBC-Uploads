clc 
//initialisation of variables
w= 15 //ft
D= 15 //ft
W= 62.4 //lb/ft^3
a= 120 //degrees
h1= 15 //ft
h2= 4 ///ft
h3= 18 //ft
//CALCULATIONS
Pu= w*D*W*w/2
hu= ((w*D^3/12)/(w^2*D/2))+w/2
Pd= W*h2*w*h2/2
hd= ((w*h2^3/12)/(h2*h1*(h2/2)))+(h2/2)
P= Pu-Pd
h= (Pu*(h1-hu)-Pd*(h2-hd))/P
F= P/(2*sind(a/4))
RT= F*(h3-(h1/10)-h)/(h3-(h1/5))
RB=F-RT
//RESULTS
printf ('RB = %.f lb ',RB)
