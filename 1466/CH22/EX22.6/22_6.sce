
clc
//initialisation of variables
g=32.2//ft/sec^2
H=81//ft
r1=1//ft
r=0.75//ft
p=95/100//percent
p1=0.06
th=20*%pi/180
d=1.5//ft
b=0.25
l=10//percent
//CALCULATIONS
v=0.4*sqrt(2*g*H)
v1=v*r1/r
V=p*sqrt(2*g*H)
Vw=V*cos(th)
Vf=V*sin(th)
th1=atan(Vf/(Vw-v))
Vr=Vf/sin(th1)
Vr1=sqrt(Vr^2-(v^2-v1^2)-(p1*2*g*H))
Vw1=Vr1*cos(th)-v1
w=(Vw*v/g)+(Vw1*v1/g)
e=w*2*g/(V*V)
rad=%pi*d*b*0.25*(100-l)/100
Q=rad*Vf
hp=Q*62.4*w/550
//RESULTS
printf ('\n horse power required= %.1f ',hp)
