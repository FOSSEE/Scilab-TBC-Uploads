Pm=600
Vm=sqrt(3*Pm)
f=15.36E6
w=2*%pi*f
t=20.3E-3
theta=%pi/2-modulo(w*t,2*%pi)

disp(theta*180/%pi)