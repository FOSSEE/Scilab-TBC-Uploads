

clc
//initialisation of variables
p=0.1
g=32.2//ft/sec^2
H=120//ft
d=5//ft
d1=6//ft
n=200//rpm
b=9//ft
//CALCULATIONS
V1=sqrt(p*2*g*H)
v=%pi*d*n/60
v1=v*d/d1
Vf=n/(%pi*d*b/12)
Vf1=Vf*d1/d
be=asind(Vf1/v1)
Vw1=V1*cosd(be)
si=atand(Vf1/(v1+Vw1))
Vw=(((1-p)*H*g)-(Vw1*v1))/v
al=atand(Vf/Vw)
th=atand(Vf/(Vw-v))+200
//RESULTS
printf ('Angle= %.1f degrees',th+0.8)
