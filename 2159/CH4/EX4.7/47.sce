// problem 4.7
l=20
b=10
a=l*b
H1=1.5
Cd=0.62
H2=0
T=5*60
n=4
g=9.81
a1=(2*a*((H1^0.5)-(H2^0.5)))/(Cd*T*((2*g)^0.5))
d=((4*a1)/(3.142*n))^0.5
d1=d*100
disp(d1,"diameter of the orifice in cm")
