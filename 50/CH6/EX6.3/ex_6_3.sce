// example 6.3
// solution to the given IVP

disp('du/dt= A*u');
// u=[u1 u2]';
A=[-3 4 ;-2 3];                      // given 
B=[1 0;0 1];                          // identity matrix;



 
[x,lam] = geigenvectors(A,B);

// hence;
disp('u=c1*%e^t*x(:,1)+c2*%e^-t*x(:,2)');
disp('u1=c1*%e^t+c2*%e^-t*2')
disp('u2=c1*%e^t+c2*%e^-t')