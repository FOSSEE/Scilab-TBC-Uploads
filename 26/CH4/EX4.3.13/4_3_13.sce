disp('the given matrix is:')
a=[1 0 6 5;0 2 5 3;0 0 0 0]
p=a
disp(a,'A=')
disp('Reducing A to echelon form')
disp('R2=R2/2')
a(2,:)=a(2,:)/2
disp(a)
disp('the pivot columns are column 1 and 2 of A')
disp('hence column space of A is:')
disp('span')
disp(a(:,1),'and',a(:,2))