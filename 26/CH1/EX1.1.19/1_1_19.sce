disp('the augmented matrix for h=2')
a=[1 2 4;3 6 8]
disp(a)
disp('R2-2*R1')
a(2,:)=a(2,:)-3*a(1,:)
disp(a)
disp('from R3 we get 0=-4')
disp('hence, if h=2 no solution, else solution exists')