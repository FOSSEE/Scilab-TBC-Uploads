// problem 11.1
P=8820*1000
N=600/60
H=500
Cv=0.97
Cu=0.46
no=0.85
w=9810
g=9.81
Q=P/(no*w*H)
V1=Cv*((2*g*H)^0.5)
u=Cu*V1
D=u/(3.142*N)
d=D/15
a=3.142*d*d/4
n=Q/(a*V1)
n1=round(n+1)
disp(n1,d*100,D,Q,"discharge in m3/sec,wheel diameter in m, jet diameter in cm, number os jets ")
