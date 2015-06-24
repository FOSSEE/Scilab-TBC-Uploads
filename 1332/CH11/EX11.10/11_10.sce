//Example 11.10
//LU Method
//Page no. 363
clc;close;clear;

A=[120,80,40,-16;80,120,16,-40;40,16,120,-80;-16,-40,-80,120];
disp(A,"A =")
L=eye(4,4);
for l=1:20
for j=1:4
    for i=1:j
        k=0
        for p=1:i-1
            k=k-A(i,p)*A(p,j)
        end
        A(i,j)=A(i,j)+k
    end
    for i=j+1:4
        k=0;
        for p=1:j-1
            k=k-A(i,p)*A(p,j)
        end
        A(i,j)=(A(i,j)+k)/A(j,j) 
    end
end
disp(A,"Modified A = ")
    for i=1:4
    for j=1:4
        if i>j then
            L(i,j)=A(i,j)
        else
            U(i,j)=A(i,j)
        end
    end
end
disp(U,"U =",L,"L =")
A=U*L;
printf('\n\nAfter %i iterations, matrix A =\n\n',l)
for i=1:4
    for j=1:4
        printf('    %.2f\t',A(i,j))
    end
    printf('\n')
end
end
printf('\n\nTherefore the eigenvalues are the diagonal elements f the transformed triangular matrix are:\n\n')
for i=1:4
    printf(' %.2f,',A(i,i))
end