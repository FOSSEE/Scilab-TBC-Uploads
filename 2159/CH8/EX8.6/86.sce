// problem 8.6
d=0.05
V=20
u=7
a=3.142*d*d/4
g=9.81
p1=1000
w=g*p1
F=(w*a*V*V)/g
F1=(w*a*((V-u)^2))/g
work=F1*u
disp(F,"force in N if plate is fixed ")
disp(F1,"force in N if plate is moving with a velocity of 7 m/sec")
disp(work,"work done per sec by the jet")
