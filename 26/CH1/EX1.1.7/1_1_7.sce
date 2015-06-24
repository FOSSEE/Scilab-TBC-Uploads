disp('the augmented matrix is:')
a=[1 7 3 -4;0 1 -1 3;0 0 0 1;0 0 1 -2]
disp(a)
disp('interchange R3 and R4')
a([3,4],:)=a([4,3],:)
disp(a)
disp('from R4 we get 0=1')
disp('hence, no solution')