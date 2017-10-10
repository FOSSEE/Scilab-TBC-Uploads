A=[3,-1,0;-2,4,-3;0,-1,1;]
disp(A)
printf('Eigen values are:')
disp(spec(A))
printf('Display of Power Method:')
U=[1,1,1]'
for i=1:14
    B=A*U
    a=abs(B(1,1))
    b=abs(B(2,1))
    c=abs(B(3,1))
    if ((a>b)&(a>c)) then
         T= (B(1,1))
          elseif ((b>a)&(b>c)) then
          T=(B(2,1))
          else T=(B(3,1))
    end
    printf('After %d iteration eigenvalue is ',i)
    disp(T)
    printf(' corresponding eigenvector is ')
    U=B/T
    disp(U)
end