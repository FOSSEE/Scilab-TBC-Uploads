// problem 6.18
q=0.08
d1=0.25
d2=1
l1=1500
l2=1500
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
v2=q*4/(3.142*((1/32)+1))
v1=v2*0.5
q1=v1*a1
q2=v2*a2
disp(q1*1000,q2*1000,"disharge through  pipe in m3/sec")
