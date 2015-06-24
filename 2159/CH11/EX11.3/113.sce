// problem 11.3
H=340
P=4410*1000
N=500/60
Cv=0.97
no=0.86
w=9810
g=9.81
Q=P/(w*H*no)
V1=Cv*(sqrt(2*g*H))
u=0.45*V1
D=u/(3.142*N)
a=Q/V1
disp(a,D,"mean diameter in m,jet area in m2")
