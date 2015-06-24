// problem 11.4
H=45
Q=50/60
u1=12.5
y=160
y2=180-y
Cv=0.97
g=9.81
V1=Cv*((2*g*H)^0.5)
Vw1=V1
Vr1=V1-u1
Vr2=Vr1
Vw2=Vr2*(cosd(y2))-u1
w=9810
P=(w*Q*(Vw1+Vw2)*u1)/(g*1000)
nh=(2*u1*(Vw1+Vw2))/(V1*V1)
disp(nh*100,P,"power developed in Kw and hydraulic efficiency")
H1=50
V11=Cv*((2*g*H1)^0.5)
Vw11=V11
Vr11=V11-u1
Vr21=Vr11
Vw21=Vr21*(cosd(y2))-u1
w=9810
P=(w*Q*(Vw11+Vw21)*u1)/(g*1000)
disp(P,"Power developed in Kw if head is increased to 50")
