disp('vectors a1 a2 a3 are:')
a1=[1 0 -2]
disp(a1')
a2=[-4 3 8]
disp(a2')
a3=[2 5 -4]
disp(a3')
disp('vector b=')
b=[3 -7 -3]
disp(b')
disp('the augmented matrix is:')
a=[1 -4 2 3;0 3 5 -7;-2 8 -4 -3]
disp(a)
a(3,:)=a(3,:)+2*a(1,:)
disp(a)
disp('from the entries of last row, the system is inconsistent')
disp('hence, b is not a linear combination of a1 a2 and a3')