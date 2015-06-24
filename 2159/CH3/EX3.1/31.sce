// problem 3.1
d1=0.3
d2=0.1
z1=6
z2=3
p1=200*1000
q1=0.07
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
v1=q1/a1
v2=q1/a2
w=9810
g=9.81
//applying bernoulli equation
p2=((z1-z2)+(((v1^2)-(v2^2))/(2*g))+(p1/w))*w
disp(p2,"pressure at point B in N/m2")
