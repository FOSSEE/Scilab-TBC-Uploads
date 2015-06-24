// problem 6.10
d1=0.15
d2=0.1
Q=0.03
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
V1=Q/a1
V2=Q/a2
c=0.6
g=9.81
dz=(V2*V2/(2*g))-(V1*V1/(2*g))+(V2*V2/(2*g))*((1/c-1)^2)
w=9810
dp=dz*w
disp(dp,"pressure loss across the contraction in N/m2")
