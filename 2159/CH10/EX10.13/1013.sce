// problem 10.13
Q=0.125
Hm=25
N=660/60
d2=0.6
d1=d2*0.5
a=0.06
y2=45
g=9.81
u2=3.142*d2*N
u1=u2*0.5
Vf2=Q/a
Vw2=u2-(Vf2/tand(y2))
n=g*Hm/(Vw2*u2)
Vf1=Q/(a)
y1=atand(Vf1/u1)
disp(y1,n*100,"manometric efficiency,vane angle at inlet")
