// problem 6.15
d=0.25
l=500
a=3.142*d*d/4
f=0.006
q=0.04
g=9.81
p2=250*1000
V=q/a
hf=(4*f*l*V*V)/(d*2*g)
z1=0
z2=25
w=9810
p1=((p2/w)+z2+hf)*w
disp(p1,"pressure at point A is N/m2")
