// problem 7.10
D=2.4
d=1.5
i=1/1500
N=0.02
a=(d-(D/2))/(D/2)
z=acos(a)
z1=3.142-z
P=D*z1
A=D*D*0.25*(z1-(sin(2*z1)/2))
m=A/P
Q=(A*(m^0.6666)*(i^0.5))/N
disp(Q*1000,"the discharge through the sewer in litres/sec")

