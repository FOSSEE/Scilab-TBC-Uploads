clc

m=4 //kg
x=0.180 //m
g=9.80 //m/s^2

//solution a:
F=m*g
k=F/x
disp(k,"the spring constant k in N/m is=")

//sloution b:
T=2*%pi*sqrt(m/k)
disp(T,"the period T in sec is=")

//solution c:
v=1/T
disp(v,"the frequency v in hz is")

//solution d:
W=0.5*k*x^2
disp(W,"the total energy stored in Nm is=")
