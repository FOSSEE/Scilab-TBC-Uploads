R=10
L=0.1
C=150E-6

w=sqrt((1+R*R*C/L)/(L*C))
f=w/(2*%pi)

disp(f)
Req=R/(1-w*w*L*C+(w*R*C)^2)
disp(Req)