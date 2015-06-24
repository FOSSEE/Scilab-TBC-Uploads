// problem 8.2
d=0.05
V=15
g=9.81
p1=1000
w=g*p1
a=3.142*d*d/4
F=(w*a*V*V)/g
u=5
F1=(w*a*((V-u)^2))/g
disp(F,"force in N on plate if plate is stationary")
disp(F1,"force in N on plate if plate is moving in the direction of the jet")
