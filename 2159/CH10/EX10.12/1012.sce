// problem 10.12
d2=1.2
N=200/60
Q=1.88
Hm=6
y2=26
g=9.81
Vf2=2.5
d1=0.6
u2=3.142*d2*N
Vw2=u2-(Vf2/tand(y2))
n=g*Hm/(Vw2*u2)
z1=(3.142*d2/60)^2
z2=(3.142*d1/60)^2
N1=(Hm*2*g/(z1-z2))^0.5
disp(n*100,N1,"least speed to start pump,manometric efficiency")
