// problem 3.2
d1=1
d2=0.5
q=0.1
p1=70*1000
l=60
z2=0
z1=l/20
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
v1=q/a1
v2=q/a2
w=9810
g=9.91
// applying bernoulli equation
p2=((z1-z2)+(((v1^2)-(v2^2))/(2*g))+(p1/w))*w
disp(p2,"presssure at lower end in N/m2")
