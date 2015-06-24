// problem 12.3
D1=0.75
D2=0.5
x1=20
Vf1=3
Vf2=3
B1=0.15
N=250/60
u1=3.142*D1*N
u2=3.142*D2*N
Vw1=Vf1/tand(x1)
y1=atand(Vf1/(u1-Vw1))
y2=atand(Vf2/u2)
Q=3.142*D1*B1*Vf1
w=9810
g=9.81
P=w*Q*Vw1*u1/(g*1000)
H=(Vw1*u1/g)+(Vf2*Vf2/(2*g))
nh=Vw1*u1/(g*H)
disp(nh*100,P,y2,y1,"hydraulic efficiency,power developed in Kw,blade angle at inlet and outlet")
