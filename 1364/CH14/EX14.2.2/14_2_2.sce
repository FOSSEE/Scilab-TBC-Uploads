clc
//initialisation of variables
w= 500 //rev
r1= 1.21 //ft
r2= 0.65 //ft
a= 12 //deg
b= 165 //deg
g= 32.2 //ft/sec^2
n= 0.88
w1= 62.3 //lbf/ft^3
n= 0.88
//CALCULATIONS
u= w*(r1+r2)*2*%pi/(2*60)
q= u*tand(a)
wo= u+q*cotd(b)
W= (u*wo)/g
H= n*W
Q= %pi*(r1^2-r2^2)*q*12400/34
Ps= w*Q*33.2*H*62.2/(550*12400*457.7*n)
//RESULTS
printf (' Head= %.1f ft',H)
printf (' \n discharge rate= %.f gal/min',Q)
printf (' \n overall efficiency= %.1f h.p',Ps)
