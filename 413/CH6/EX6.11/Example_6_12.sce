A=[4,-1,1;1,1,1;-2,0,-6;]
disp(A)
printf('Eigen values are:')
disp(spec(A))
printf('Display of Shifting in Power Method:')
printf('Shifted Matrix (Shifted by -6)is')
A1=A-(-6)*eye(3,3)
disp(A1)
printf('Inverse of Shifted Matrix is' )
A=inv(A1)
disp(A)
U=[1,1,1]'
for i=1:4
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
    printf('After %d iteration eigenvalue of Inverse Shifted Matrix is ',i)
    disp(T)
    printf(' corresponding eigenvector of Inverse Shifted Matrix is ')
    U=B/T
    disp(U)
end
T1=1/T
T2=-6+T1
printf('Largest eigen value of Shifted Matrix' )
disp(T1)
printf('Largest eigen value of  Matrix is' )
disp(T2)