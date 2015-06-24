// problem 10.14
n=3
d2=0.4
B2=0.02
y2=45
da=0.1
nm=0.9
w=9810
no=0.8
g=9.81
N=1000/60
Q=0.05
Vf2=Q/(3.142*d2*nm*B2)
u2=3.142*d2*N
Vw2=u2-(Vf2/tand(y2))
Hm=nm*Vw2*u2/g
Ht=n*Hm
P=w*Q*Ht/1000
Ps=P/no
disp(Ps,"shaft power in Kw")
