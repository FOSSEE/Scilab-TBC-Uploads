// example 6.4
// solution to the given IVP

disp('du/dt= A*u');
// u=[u1 u2]';
A=[-2 1;1 -20];                      // given 
B=[1 0;0 1];                          // identity matrix;




 
[x,lam] = geigenvectors(A,B);

// hence;
disp('u=c1*%e^(lam(1)*t)*x(:,1)+c2*%e^-(lam(2)*t)*x(:,2)');
