clc
clear
printf('Solve the equation y''+y=3X^2, with boundary points (0,0) and (2, 3.5)')
printf('\n Subdivide into seven elements that join at x=0.4, 0.7, 1.1, 1.3 and 1.6')
printf('\n Augmented matrix')
P=[2.367 -2.567 0 0 0 0 0 0 -0.024
-2.567 5.6 -3.383 0 0 0 0 0 -0.160
0 -3.383 8.167 -5.033 0 0 0 0 -0.328
0 0 -5.033 9.867 -5.033 0 0 0 -0.492
0 0 0 -5.033 9.867 -5.033 0 0 -0.732
0 0 0 0 -5.033 8.167 -3.383 0 -1.378
0 0 0 0 0 -3.383 5.600 -2.567 -2.89
0 0 0 0 0 0 -2.567 2.367 -1.944]
disp(P)
printf('Matrix after ajjusting boundary condition')
T=[ 5.6 -3.383 0 0 0 0  -0.160
 -3.383 8.167 -5.033 0  0 0 -0.328
 0 -5.033 9.867 -5.033  0 0 -0.492
 0 0 -5.033 9.867 -5.033 0 -0.732
 0 0 0 -5.033 8.167 -3.383  -1.378
 0 0 0 0 -3.383 5.600  6.094]
 disp(T)
 A=[ 5.6 -3.383 0 0 0 0  
 -3.383 8.167 -5.033 0  0 0 
 0 -5.033 9.867 -5.033  0 0 
 0 0 -5.033 9.867 -5.033 0 
 0 0 0 -5.033 8.167 -3.383  
 0 0 0 0 -3.383 5.600  ]
 
 B=[-0.160 -0.328 -0.492 -0.732 -1.378 6.094]'
 S=A\B
printf('The table showing the analytical solution and the errors of our computation')
 
 X=[0.4 0.7 0.9 1.1 1.3 1.6]
 for i=1:6
     B(1,i)=6*cos(X(1,i))+3*(X(1,i).*X(1,i)-2)
     T=[X(1,i), S(i,1), B(1,i), B(1,i)-S(i,1)]
disp(T)
 end
 