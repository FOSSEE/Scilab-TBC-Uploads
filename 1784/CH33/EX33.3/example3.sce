//chapter 33
//example3
clc
//given
N=250 //turns in coil
i=1.0*10^-4 //in amp
B=0.2 //wb/m2
h=2*10^-2// coil height in m
w=1.0*10^-2 //width of coil in m
Q=30 //angular deflectin in degrees
theta=%pi/2
A=h*w
k=N*i*A*B*sin(theta)/Q
disp(k,"Torssional constant in nt-m/deg is")
