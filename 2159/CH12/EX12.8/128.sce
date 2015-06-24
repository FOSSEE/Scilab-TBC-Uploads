// problem 12.8 
D=4.5
d=2
P=20608
N=140/60
H=22
nh=0.94
w=9810
g=9.81
no=0.85
Q=P*1000/(w*no*H)
Vf1=Q*4/(3.142*((D^2)-(d^2)))
u1=3.142*D*N
Vw1=nh*g*H/u1
x1=atand(Vf1/Vw1)
disp(x1,Q,"discharge through the turbine,guide blade angle at inlet")
