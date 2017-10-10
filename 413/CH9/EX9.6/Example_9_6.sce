clc
clear
printf('For the triangular element with nodes r s and t Find {a} {N} and v(0.8, 0.4)')
M=[1 0 0; 1 2 0; 1 0 1]
printf('\n M=')
disp(M)
Minv=inv(M)
printf('\n inverse of M')
disp(Minv)
C=[ 100 200 300]'
printf('\n C')
disp(C)
a=Minv*C
printf('\n {a}=Inverse of M* C')
printf('\n {a}=')
disp(a)
v=a(1,1)+a(2,1)*0.8+a(3,1)*0.4
printf('v(0.8,0.4)=')
disp(v)