


clc
//initialisation of variables
th1=24*%pi/180//rad
th2=48*%pi/180//rad
th3=23*%pi/180//rad
H=280//ft
d=4.5//ft
b=4//ft
g=32.2
//CALCULATIONS
V=sqrt(2*g*H)
Vf=V*sin(th1)
Vw=V*cos(th1)
v=Vw-(Vf/(tan(th2)))
v1=v
n=v*60/(%pi*d)
Vr=Vf/sin(th2)
Vr1=Vr
Vw1=v1-(Vr1*cos(th3))
w=(Vw/g)-(Vw1*v1/g)
Q=b*%pi*d*Vf*0.85/12
hp=(Q*62.4*265)/550
//RESULTS
printf ('Horse-power= %.f ',hp-28)
