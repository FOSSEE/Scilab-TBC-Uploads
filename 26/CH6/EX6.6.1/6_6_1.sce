disp('To obtain a least sqaure line from the given data')
disp('Placing the x coordinates of the data in second column of matrix X we get:')
x=[1 0;1 1;1 2;1 3]
disp(x,'X=')
disp('Placing the y coordinates in y vector')
y=[1;1;2;2]
disp(y,'y=')
disp('Product of transpose of X and X=')
p1=x'*x
disp(p1)
disp('Product of transpose of X and y=')
p2=x'*y
disp(p2)
disp('The least square solution =')
disp(inv(p1)*p2)
p=inv(p1)*p2
disp('Hence, the least square line is:')
disp('x',p(2,1),'+',p(1,1),'=','y')