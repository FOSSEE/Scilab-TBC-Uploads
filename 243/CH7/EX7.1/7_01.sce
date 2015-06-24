//Example No. 7_01
//Elimination Process
//Pg No. 211

clear ; close ; clc ;

A = [3 2 1 10; 2 3 2 14 ; 1 2 3 14];
A(2,:) = A(2,:) - A(1,:)*A(2,1)/A(1,1)
A(3,:) = A(3,:) - A(1,:)*A(3,1)/A(1,1)
disp(A)

A(3,:) = A(3,:) - A(2,:)*A(3,2)/A(2,2)
disp(A)

z = A(3,4)/A(3,3)
y = (A(2,4) - A(2,3)*z)/A(2,2)
x = (A(1,4) - A(1,2)*y - A(1,3)*z)/A(1,1)
disp(x,'x = ',y,'y = ',z,'z = ') 