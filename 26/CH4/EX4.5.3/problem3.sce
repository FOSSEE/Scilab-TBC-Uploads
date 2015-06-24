disp('to find the dimension of subspace H, which is the set of linear combination of vectors v1 v2 and v3')
v1=[0;1;0;1]
v2=[0;-1;1;2]
v3=[2;0;-3;0]
disp(v3,'v3=',v2,'v2=',v1,'v1=')
disp('Clearly, v1 is not equal to zero')
disp('and v2 is not a multiple of v1 as third element of v1 is zero whereas that of v2 is 1.')
disp('Also, v3 is not a linear combination of v1 and v2 as the first element of v1 and v2 is zero but that of v3 is 2')
disp('Hence, v1 v2 and v3 are linearly independent and dim(H)=3')