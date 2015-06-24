// problem 6.17
a=90
H1=10
d=0.15
l=400
H2=7
g=9.81
f=0.008
z=3.142*d*d*((2*g)^0.5)
z1=(1.5+(4*f*l/d))^0.5
T=(8*a*z1*(H1^0.5-H2^0.5))/z
disp(T/3600,"time to lower the level from 10m to 7m in hr")
