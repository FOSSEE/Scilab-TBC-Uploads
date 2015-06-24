clc

G=28 //GPa
t1=0.012
t2=0.006
t3=0.01
t4=0.006
A=0.125
h=226000 //N/m
Mt=2*A*h
disp(Mt,"applied torque in Nm is=")

tau1=(h/t1)
disp(tau1,"shearing stress in Pa is= ")
tau2=(h/t2)
disp(tau2,"shearing stress in Pa is= ")
tau3=(h/t3)
disp(tau3,"shearing stress in Pa is= ")
tau4=(h/t4)
disp(tau4,"shearing stress in Pa is= ")

//theta=(h/2*G*A)intc((1/t)ds)
theta=(h/(2*G*10^9*A))*((0.25/t1)+2*(0.5/t2)+(0.25/t3))
disp(theta,"angle of twist per unit length in rad/m is= ")

