// problem 5.4
x=90
H=0.2
b=0.3
Cd=0.62
g=9.81
q1=(8*Cd*tand(x/2)*((2*g)^0.5)*(H^2.5))/15
q2=2*Cd*b*((2*g*H*H*H)^0.5)/3
q=q1+q2
disp(q,"discharge over the trapezoidal notch in m3/sec")
