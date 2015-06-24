//rank of a matrix
A=[0 1;0 1]
[E,Q,Z ,stair ,rk1]=ereduc(A,1.d-15)
disp(rk1,"rank of A=")
B=[0 5 1 4;3 0 3 2]
[E,Q,Z ,stair ,rk2]=ereduc(B,1.d-15)
disp(rk2,"rank of B=")
C=[3 9 2;1 3 0;2 6 1]
[E,Q,Z ,stair ,rk3]=ereduc(C,1.d-15)
disp(rk3,"rank of C=")
D=[3 0 0;1 2 0;0 0 1]
[E,Q,Z ,stair ,rk4]=ereduc(D,1.d-15)
disp(rk4,"rank of D=")