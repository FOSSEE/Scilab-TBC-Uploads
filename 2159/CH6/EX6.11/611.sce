// problem 6.11
d1=0.5
d2=0.25
p1=103005
p2=67689
p3=p2
w=9810
g=9.81
c=0.65
z=1-(1/16)+((1/c-1)^2)
dp=p1-p2
v2=((dp*2*g)/(w*z))^0.5
a2=3.142*d2*d2/4
Q=v2*a2
disp(Q*1000,"rate of flow in m3/sec")
v3=v2
v1=v3/4
v4=v1
he=(v3-v4)^2/(2*g)
p4=w*((p3/w)+((v3*v3-v4*v4)/(2*g))-he)
disp(p4,"pressure at the 50 cm enlarge section in N/m2")

