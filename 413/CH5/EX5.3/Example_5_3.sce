clc
clear
x=[1.6 1.8 2 2.2 2.4 2.6 2.8 3 3.2 3.4 3.6 3.8];
F=[4.953 6.05 7.389 9.025 11.023 13.464 16.445 20.086 24.533 29.964 36.594 44.701]
for i=1:12
X=[x(1,i), F(1,i)]
end
A1=(0.2/2)*[(6.05+29.964)+2*(7.389+9.025+11.023+13.464+16.445+20.086+24.533)]
printf('Answer by Trapezoidal Rule to estimate the integral from x=1.8 to x=3.4 taking h=0.2')
disp(A1)
A2=(0.4/2)*[(6.05+29.964)+2*(9.025+13.464+20.086)]
printf('Answer by Trapezoidal Rule to estimate the integral from x=1.8 to x=3.4 taking h =0.4')
disp(A2)
A3=(0.8/2)*[(6.05+29.964)+2*(13.464)]
printf('Answer by Trapezoidal Rule to estimate the integral from x=1.8 to x=3.4 taking h=0.8')
disp(A3)
A4=A1+(A1-A2)/3
A5=A2+(A2-A3)/3
A6=A4+(A4-A5)/3
T1=[0.2 A1 A4 A6]
T2=[0.4 A2 A5]
T3=[0.8 A3]
disp(T1)
disp(T2)
disp(T3)