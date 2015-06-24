clear all; clc;
disp("Ex 2_10")
a1=60
a=a1*%pi/180
b1=45
b=b1*%pi/180
f1=1000
f2=500
f1_z=f1*sin(a)
f=f1*cos(a)
f1_x=f2*cos(b)
f1_y=f2*sin(b)
printf('\n\nF_1z = %.0fN',f1_z)
printf('\n\nF = %.0fN',f)
printf('\n\nF_1x = %.0fN',f1_x)
printf('\n\nF_1y = %.0fN',f1_y)
printf('\n\nF1 =(%.0fi-%.0fj+%.0fk) N',f1_x,f1_y,f1_z)
u_i=f1_x/f1
u_j=f1_y/f1
x=(-1)*u_j
u_k=f1_z/f1
printf('\n\nU_FR = %.3fi-%.3fj+%.3fk',u_i,u_j,u_k)
disp(" ")
l1=acos(u_i)
l=l1*180/%pi
m1=acos(x)
m=m1*180/%pi
n1=acos(u_k)
n=n1*180/%pi
printf('\n\n alpha = %.1f degrees',l)
printf('\n\n beta = %.0f degrees',m)
printf('\n\n gamma = %.1f degrees',n)
disp(" ")
disp("F2 = (1.06i+1.84j-2.12k) kN")
