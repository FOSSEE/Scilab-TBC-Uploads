// problem 12.2
D1=1
N=200/60
B1=0.15
Vf1=3
Vf2=Vf1
x2=90
Q=3.142*D1*B1*Vf1
u1=3.142*D1*N
Vw1=u1
w=9810
g=9.81
P=(w*Q*Vw1*u1)/(g*1000)
H=(Vw1*u1/g)+(Vf2*Vf2/(2*g))
nh=Vw1*u1/(g*H)
disp(nh*100,P,"power developed in Kw,hydraulic efficiency")
