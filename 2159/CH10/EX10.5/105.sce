// problem 10.5
Q=0.03
Hs=18
d=0.1
l=90
n=0.8
w=9810
a=3.142*d*d/4
f=0.04
g=9.81
Vd=Q/a
H1=(4*f*l*Vd*Vd)/(d*2*g)+(Vd*Vd/(2*g))
Hm=Hs+H1
P=(w*Q*Hm)/(n*1000)
disp(P,"power required to drive the pump")
