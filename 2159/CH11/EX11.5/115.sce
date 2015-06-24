// problem 11.5
H=50
Q=1.2
u1=18
y=160
y2=180-y
Cv=0.94
g=9.81
V1=Cv*((2*g*H)^0.5)
Vw1=V1
Vr1=V1-u1
Vr2=Vr1
Vw2=Vr2*(cosd(y2))-u1
w=9810
P=(w*Q*(Vw1+Vw2)*u1)/(g*1000)
n=P*1000/(w*Q*H)
disp(n*100,P,"power developed in Kw and efficiency of the wheel")
