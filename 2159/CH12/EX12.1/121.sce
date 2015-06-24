// problem 12.1
D1=0.6
D2=0.3
x2=90
B1=0.15
N=300/60
x1=15
Vf1=3
Vf2=Vf1
u1=3.1428*D1*N
u2=3.142*D2*N
Vw1=Vf1/tand(x1)
y1=atand(Vf1/(Vw1-u1))
Q=3.142*D1*B1*Vf1
w=9810
g=9.81
P=w*Q*Vw1*u1/(g*1000)
disp(P,y1,"blade angles, Power developed in Kw")
