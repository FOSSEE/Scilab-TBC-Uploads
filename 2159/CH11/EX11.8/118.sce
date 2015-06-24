// problem 11.8
L=1600
H=550
Dp=1.2
d=0.18
f=0.006
Cv=0.97
g=9.81
V1=Cv*(sqrt(2*g*H))
a=3.142*d*d/4
Q=a*V1
w=9810
P=(w*Q*V1*V1)/(2*g*1000)
ap=3.142*Dp*Dp/4
Vp=Q/ap
Hf=(4*f*L*Vp*Vp)/(Dp*2*g)
Tp=4*w*Q*(H+Hf)/1000
disp(Tp,P,"power to each jet in Kw,total power at reserviour i Kw")
