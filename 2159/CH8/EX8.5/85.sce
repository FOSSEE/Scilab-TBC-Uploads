// problem 8.5
d=0.05
V=20
y=120
x=180-y
g=9.81
p1=1000
w=g*p1
a=3.142*d*d/4
F=(w*a*V*V*(1+cosd(x)))/(g)
disp(F,"force in N exerted by the water jet")
