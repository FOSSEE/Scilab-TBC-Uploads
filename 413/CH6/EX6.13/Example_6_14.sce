//Convert the Matrix A to upper Hessenberg
A=[7,8,6,6;1,6,-1,-2;,1,-2,5,-2;3,4,3,4;]
printf('Matrix A is')
disp(A)
printf('We can create zeros inthe first column and row 3 and 4 by B*A*B(invrse) Where B is')
b3=A(3,1)/A(2,1)
b4=A(4,1)/A(2,1)
B=[1,0,0,0;0,1,0,0;0,-b3,1,0;0,-b4,0,1]
disp(B)
A=B*A*inv(B)
printf('After perfroming the multiplication we have' )
disp(A)
printf('We can create zeros inthe second column and row  4 by B*A*B(invrse) Where B is')
b4=A(4,2)/A(3,2)
B=[1,0,0,0;0,1,0,0;0,0,1,0;0,0,-b4,1]
disp(B)
A=B*A*inv(B)
printf('After perfroming the multiplication we have' )
disp(A)
printf('this is upper Hessenberg')