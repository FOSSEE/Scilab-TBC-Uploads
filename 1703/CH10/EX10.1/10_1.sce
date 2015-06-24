
clc
//initialisation of variables
v= 231 //ft/sec
g= 32.2 //ft/sec^2
vc= 0.97
r= 0.47
p= 85 //per cent
A= 170 //degrees
p1= 88 //per cent
l= 950 //ft
//CALCULATIONS
H= v^2/(vc^2*2*g)
u= r*v
vr= v-u
vr1= p*vr/100
w1= u-vr1*cosd(180-A)
W= u*(v-w1)/g
he= W*100/H
W1= p1*W/100
oe= W1*100/l
//RESULTS
printf ('hydraulic efficiency = %.f per cent',he)
printf ('\n overall efficiency = %.1f per cent',oe)
