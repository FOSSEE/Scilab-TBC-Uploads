// problem 5.6
L=36
v1=2
g=9.81
H=1.2
H1=(v1*v1)/(2*g)
n=2*12
w=0.6
Nv=11
Lf=L-(Nv*w)
Q=1.84*(Lf-(0.1*n*(H+H1)))*((H+H1)^1.5-(H1^1.5))
disp(Q,"dischsrge over the weir in m3/sec")
