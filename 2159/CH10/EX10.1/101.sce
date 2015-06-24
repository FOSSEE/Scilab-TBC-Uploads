// problem 10.1
N=900/60
x1=90
D1=0.2
D2=0.4
n=0.7
g=9.81
u1=3.142*D1*N
u2=2*u1 // as D2=2D1
y1=20
Vf1=u1*tand(y1)
Vr1=Vf1/sind(y1)
Vf2=Vf1
Vr2=Vr1
x=(Vr2*Vr2-Vf1*Vf1)^0.5
Vw2=u2-x
B1=0.02
Q=3.142*D1*B1*Vf1
H=Vw2*u2/g
w=9810
P=(w*Q*Vw2*u2)/(g*1000)
inputpower=(w*Q*H)/(1000*n)
disp(inputpower,P,H,Q,"discharge through the pump,heat developed,power in Kw at outlet,input power if overall efficiency is 70%")
