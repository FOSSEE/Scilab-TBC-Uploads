// problem 10.11
Hm=14.5
N=1000/60
y2=30
d2=0.3
B2=0.05
g=9.81
n=0.95
u2=3.142*d2*N
Vw2=g*Hm/(n*u2)
Vf2=(u2-Vw2)*tand(y2)
Q=3.142*d2*B2*Vf2
disp(Q*1000,"discharge of pump in m3/sec if manometric efficiency if 95%")
