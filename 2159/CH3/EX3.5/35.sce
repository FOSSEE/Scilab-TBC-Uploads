// problem 3.5
d1=0.2
d2=0.5
p1=98.1*1000
p2=58.86*1000
q=0.2
z1=0
z2=4
g=9.81
s=0.87
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
v1=q/a1
v2=q/a2
w=9810
ph1=p1/(w*s)
ph2=p2/(w*s)
vh1=(v1^2)/(2*g)
vh2=(v2^2)/(2*g)
th1=vh1+ph1+z1
th2=vh2+ph2+z2
tl=th1-th2
disp(tl,"loss of head in m,flow from 1 to 2")
