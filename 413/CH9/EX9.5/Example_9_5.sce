clc
clear
//printf('(Solve the equation y''-(x+1)y=e^-x(X^2-x+2), with Neumann boundary conditions y'(2)=0, y'(4)=-0.036631)')

printf('\n Augmented matrix')
P=[2.542 -1.729 0 0 0  0.127
-1.729 5.167 -1.688 0 0  0.236
0 -1.688 5.333 -1.646 0  0.199
0 0 -1.646 5.5 -1.604 0.163
0 0 0 -1.604 2.792 0.072 ]
disp(P)
printf('Matrix after ajjusting boundary condition')
T=[ 2.542 -1.729 0 0 0  0.127
-1.729 5.167 -1.688 0 0  0.236
0 -1.688 5.333 -1.646 0  0.199
0 0 -1.646 5.5 -1.604 0.163
0 0 0 -1.604 2.792 0.036 ]
 disp(T)
 A=[ 2.542 -1.729 0 0 0  
-1.729 5.167 -1.688 0 0  
0 -1.688 5.333 -1.646 0  
0 0 -1.646 5.5 -1.604 
0 0 0 -1.604 2.792    ]
 
 B=[0.127 0.236 0.199 0.163 0.036]'
 S=A\B
printf('The table showing the analytical solution and the errors of our computation')
 
 X=[2.0 2.5 3.0 3.5 4]
 for i=1:5
     B(1,i)=exp(-X(1,i))*(X(1,i)-1)
     T=[X(1,i), S(i,1), B(1,i), B(1,i)-S(i,1)]
disp(T)
 end
 