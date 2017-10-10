//Given This Matrix A, create a zero in position (4,2) by multiplying bu the proper @ Matrix)
A=[7,8,6,6;1,6,-1,-2;,1,-2,5,-2;3,4,3,4;]
printf('Matrix A is')
disp(A)
printf('Values of d, c,s are')
d=sqrt(A(2,2)^2+A(4,2)^2)
disp(d)
c=A(2,2)/d
disp(c)
s=A(4,2)/d
disp(s)
printf('Matrix Q is')
Q=[1,0,0,0;0,c,0,s;0,0,1,0;0,-s,0,c]
disp(Q)
printf('Matrix Q*A is')
C=Q*A
disp(C)
printf('Matrix (Q*A*invsre(Q)) is')
B=Q*A*Q'
disp(B)
