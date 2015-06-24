// problem 10.10
Q=0.118
N=1450/60
Hm=25
d2=0.25
B2=0.05
n=0.75
g=9.81
u2=3.142*d2*N
Vf2=Q/(3.142*d2*B2)
Vw2=g*Hm/(n*u2)
y2=atand(Vf2/(u2-Vw2))
disp(y2,"vane angle in degree at the outer nperiphery of the impeller")
