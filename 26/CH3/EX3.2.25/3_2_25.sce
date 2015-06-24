disp('the given vectors are:')
v1=[7 -4 -6]'
v2=[-8 5 7]'
v3=[7 0 -5]'
disp(v3,'v3=',v2,'v2=',v1,'v1=')
disp('combining them as a matrix')
a=[v1 v2 v3]
disp(a,'A=')
disp('if det(A) is not equal to zero, then v1 v2 and v3 are linearly independent')
disp('expanding about third column')
disp('det(A)=7 X (-28+30) - 5 X (35-32)')
disp(det(a),'=')
disp('hence, v1 v2 and v3 are linearly independent')