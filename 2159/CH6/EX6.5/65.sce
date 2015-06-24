// problem 6.5
d=0.2
Q=0.088
l=5
vd=0.01
p=1000
v=vd/(p*10)
a=3.142*d*d/4
g=9.81
V=Q/a
Re=V*d/v
f=0.0018+(0.092/(3*(Re^0.5)))
Hf=(4*f*l*V*V)/(d*2*g)
disp(Hf,"head lost due to friction in m")
