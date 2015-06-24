// problem 3.3
d1=0.2
d2=0.1
l=4
x=30
p1=392.4*1000
q=0.035
z1=0
z2=l*sind(x)
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
v1=q/a1
v2=q/a2
w=9810
g=9.81
p2=((z1-z2)+(((v1^2)-(v2^2))/(2*g))+(p1/w))*w
disp(p2,"pressure intensity at outlet in N/m2")
