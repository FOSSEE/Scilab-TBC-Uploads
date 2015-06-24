

clc
//initialisation of variables
d=0.8
cv=0.01
db=0.6
cvb=0.005
//CALCULATIONS
v=cv/d
vc=v*2000
vb=cvb/db
vcb=vb*2000
r=vc/vcb
//results
printf (' Ratio of critical velocities= %.1f',r)
