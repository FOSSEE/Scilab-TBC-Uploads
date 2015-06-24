clear
clc
//initialisation of variables
g= 32.2 //ft/sec^2
H= 100 //ft
a= 25 //degrees
a1= 20 //degrees
r1= 9/8
r2= 0.2
u= 6.63 //ft/sec
w= 62.4 //lb/ft^3
h1= 34 //ft
h2= 100 //ft
r= 0.1
//CALCULATIONS
f= sqrt(H*g/((r1*cotd(a)*cotd(a1))+r1*0.5+(r1*0.5^2*0.2/(sind(a))^2)+0.1/(sind(a1+10))^2))
W= u*f^2/g
q= a*H*550/(10*W*w)
q1= q/w
A= q/f
dh= h1+h2-((1+r)*f^2/((sind(a1))^2*2*g))
//RESULTS
printf ('f = %.1f ft/sec',f)
printf ('\n Work Done = %.1f ft-lb/lb',W)
printf ('\n Quantity flow = %.1f cusecs',q)
printf ('\n Area form guides = %.3f ft^2',A)
printf ('\n Pressure at entry of level = %.1f ft of water',dh)

//The answer is a bit different due to rounding off error in textbook

