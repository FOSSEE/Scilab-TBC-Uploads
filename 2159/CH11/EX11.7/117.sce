// problem 11.7
Hg=500
hf=Hg/3
H=Hg-hf
Q=2
y=165
y2=180-y
g=9.81
w=9810
Cv=1
V1=Cv*(sqrt(2*g*H))
u=0.45*V1
Vr1=V1-u
Vw1=V1
Vr2=Vr1
Vw2=(Vr2*(cosd(y2)))-u
W=w*Q*(Vw1+Vw2)*u/g
P=W/1000
nh=2*u*(Vw1+Vw2)/(V1*V1)
disp(nh*100,P,"power given by the water to the runner in Kw,Hydraulic efficiency")
