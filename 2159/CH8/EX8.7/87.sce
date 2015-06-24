// problem 8.7
W=58.86
d=0.02
V=5
z=0.15
g=9.81
p1=1000
w=g*p1
a=3.142*d*d/4
F=(w*a*V*V)/g
cog=0.1
x=30
P=(F*z)/cog
F1=((P*cog*(cosd(x)))+(W*cog*(sind(x))))
V1=((F1*g)/(w*a))^0.5
disp(V1,"velocity in m/sec of the jet if the plate is deflected through 30 degree")
