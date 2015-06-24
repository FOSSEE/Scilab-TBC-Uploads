// problem 12.6
no=0.8
P=147*1000
H=10
g=9.81
u1=0.95*(sqrt(2*g*H))
Vf1=0.3*(sqrt(2*g*H))
N=160/60
Vw2=0
nh=(H-(0.2*H))/H
Vw1=nh*g*H/u1
x1=atand(Vf1/Vw1)
y1=atand(Vf1/(u1-Vw1))
D1=u1/(3.142*N)
w=9810
p=147*1000
Q=p/(w*H*no)
B1=Q/(3.142*D1*Vf1)
disp(B1*100,D1,y1,x1,"guide blade angle,wheel vane angle,diameter of wheel,width of wheel at inlet in cm")
