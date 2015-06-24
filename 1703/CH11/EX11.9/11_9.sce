clear
clc
//initialisation of variables
e= 0.88
w= 1.25 //in
d= 10 //in
q= 630 //gal/min
a= 40 //degrees
g= 32.2 //ft/sec^2
e1= 0.83
//CALCULATIONS
Q= q/(6.24*60)
f1= Q/(e*%pi*(d/12)*(w/12))
u1= 1000*(w*4/12)*2*%pi/60
w1= u1-f1*cotd(a)
W= u1*w1/g
lr= (f1^2+u1^2-f1^2/(sind(a))^2)/(2*g)
mh= e1*W
p= mh-lr
v1= sqrt(f1^2+w1^2)
ke= v1^2/(2*g)
pke= p*100/ke
me= 100*lr/W
//RESULTS
printf ('Velocity of flow = %.f ft/sec',f1)
printf ('\n Work done = %.1f ft-lb/lb',W)
printf ('\n manometric efficiency = %.1f ft',mh)
printf ('\n Pressure recovered = %.1f ft head',p)
printf ('\n Kinetic energy discharge = %.f ft-lb/lb',ke)
printf ('\n Percentage of kinetic energy recovered = %.1f per cent',pke)
printf ('\n manometric efficiency = %.f per cent',me)

//The answer is a bit different due to rounding off error in textbook

