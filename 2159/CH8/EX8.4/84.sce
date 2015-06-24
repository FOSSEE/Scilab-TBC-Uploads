// problem 8.4
d=0.02
V=20
x=15
g=9.81
p1=1000
w=g*p1
a=3.142*d*d/4
W=(w*a*V*V)/(g*sind(x))
F1=(w*a*V*V)/(2*g)
disp(W,"weight of the plate in N")
disp(F1,"force in N required at the lower edge of the plate")
