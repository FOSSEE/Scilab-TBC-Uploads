disp('the three vectors are:')
u=[4;-1;7;-4]
v=[-5;3;-5;1]
w=[7;-8;0;2]
disp(w,v,u)
disp('u v and w form the columns of A')
A=[u v w]
disp(A)
disp('the augmented matrix is:')
c=[A [6 -8 0 -7]']
disp(c)