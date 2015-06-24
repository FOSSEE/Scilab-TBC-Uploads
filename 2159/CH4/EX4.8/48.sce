// problem 4.8
l1=10
b1=5
l2=5
b2=2.5
a1=l1*b1
a2=l2*b2
d=0.2
a=3.142*d*d/4
H1=4
g=9.81
q=25
Cd=0.62
h1=q/a1
h2=q/a2
H2=H1-h1-h2
T=(2*a1*a2*((H1)^0.5-(H2)^0.5))/(a*Cd*(a1+a2)*((2*g)^0.5))
disp(T,"time taken to flow 25 m3 in sec")
