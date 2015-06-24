// problem 6.6
s=0.75
d=0.2
l=1000
Q=3/60
f=0.01
a=3.142*d*d/4
V=Q/a
g=9.81
Hf=(4*f*l*V*V)/(d*2*g)
w=g*s*1000
dp=w*Hf
disp(dp,"pressure drop along its entire lenght in N/m2")
