// problem 8.10
Q=0.283
d=0.05
x=170
u=48
g=9.81
p1=1000
w=g*p1
a=3.142*d*d/4
V1=Q/a
Vw1=V1
Vr1=V1-u
x1=0
Vr2=Vr1
Vw2=(Vr2*cosd(180-x))-u
Fx=(w*a*(V1-u)*(Vw1+Vw2))/g
P=Fx*u/1000
n=(P*1000*g*2)/(w*Q*V1*V1)
disp(n*100,P,Fx,"force exerted by the jet,power developed by the vane,efficiency")
