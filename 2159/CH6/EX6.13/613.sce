// problem 6.13
d=0.25
l=12*1000
w=9320
i=1/300
v=20*(10^-4)
a=3.142*d*d/4
q=0.015
V=q/a
g=9.81
Rn=V*d/v
f=16/Rn
hf=(4*f*l*V*V)/(2*d*g)
H=hf+(i*l)
p=(w*q*H)/1000
disp(p,"power required to pump the oil")
