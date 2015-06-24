//Example 11.11
//Generalized Eigenvalue Problem
//Page no. 365
clc;close;clear;

A=[1,1,0.5;1,1,0.25;0.5,0.25,2]
B=[2,2,2;2,5,5;2,5,11]
disp(B,"B =",A,"A =")
for i=1:3
    G(i,i)=sqrt(B(i,i))
end
G=[B;eye(3,3)];

//transformation to frobenius matrix
for k=3:-1:2
    g(k)=0;
    for j=1:k-1
        if(g(k)<G(k,j))
            g(k)=G(k,j)
            p=j;
        end
    end
    if(g(k)~=0)
        for j=1:3
            r(1,j)=G(k,j)
        end
        for i=1:6
            G(i,k-1)=G(i,k-1)/g(k)
        end
        for j=1:3
            if(j~=k-1)
                l=G(k,j)
                for i=1:6
                    G(i,j)=G(i,j)-l*G(i,k-1)
                end
            end
        end
    end
    for j=1:3
        for i=1:3
            c(i,1)=G(i,j)
        end
        G(k-1,j)=0
        for i=1:3
            G(k-1,j)=G(k-1,j)+r(1,i)*c(i,1)
        end
    end
end

//partition g
for i=4:6
    for j=1:3
        T(i-3,j)=G(i,j)
    end
end

//eigenvalues computation
p=poly(B,'x')
a=roots(p)
printf('\n\nDiagonalized Matrix B = \n\n')
for i=1:3
    for j=1:3
        if i~=j then
            B(i,j)=0
        else
            B(i,j)=a(i)
        end
    end
end
disp(B)
//eigenvectors computation
for k=1:3
    m=2
    for l=1:3
        y(l,k)=a(k)^(m)
        m=m-1;
    end
end
printf('\n\n')


for k=1:3
    for l=1:3
        y1(l,1)=y(l,1)
        y2(l,1)=y(l,2)
        y3(l,1)=y(l,3)
    end
    x1=T*y3;
    x2=T*y2;
    x3=T*y1;
end
printf('\n\nEigenvectors of B are :\n\n')
for i=1:3
    printf('|%.5f|\t\t|%.5f|\t\t|%.5f|',x3(i,1),x2(i,1),x1(i,1))
    printf('\n')
end
x=[x3,x2,x1]





B=[2,2,2;2,5,5;2,5,11]
G=0
for i=1:3
    for j=1:3
        if i==j then
            G(i,j)=sqrt(B(i,j))
        else
            G(i,j)=0;
        end
    end
end

B=inv(G)*x'*A*x*inv(G)
disp(B,"Eigenvectors of A =")

printf('\n\n\nNote : Computation Error in book in caculation of eigenvector of B thus for A')

