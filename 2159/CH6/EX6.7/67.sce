// problem 6.7
d=0.3
g=9.81
l=400
Q=0.3
f=0.032
a=3.142*d*d/4
V=Q/a
Lentrance=(0.5*V*V)/(2*g)
Hf=(4*f*l*V*V)/(d*2*g)
Lexit=(V*V)/(2*g)
Totalloss=Lentrance+Hf+Lexit
disp(Totalloss,"diffrenc in elevation in m")
