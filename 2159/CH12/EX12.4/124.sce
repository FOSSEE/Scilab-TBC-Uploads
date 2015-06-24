// problem 12.4
H=150
Q=6
N=400/60
D1=1.2
x1=20
x2=90
B1=0.1
u1=3.142*D1*N
Vf1=Q/(3.142*D1*B1)
Vw1=Vf1/tand(x1)
Vw2=0
w=9810
g=9.81
P=w*Q*Vw1*u1/(g*1000)
disp(P,Vw2,Vw1,"whirl component at inlet and outlet,power developed in Kw")
