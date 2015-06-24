// problem 6.8
l=40
l1=20
l2=20
d1=0.15
d2=0.3
H=8
f=0.01
h1=(2*d2*d2)/(d1*d1)
h2=4*f*l1*16/d1
h3=9
h4=4*f*l2/d2
g=9.81
ht=h1+h2+h3+h4+1
V2=(H*2*g/ht)^0.5
a2=3.142*d2*d2/4
Q=V2*a2
disp(Q*1000,"rate of low in litres/sec")

 
