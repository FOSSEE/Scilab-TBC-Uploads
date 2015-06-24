//Example 11.3
//Danilevsky Method
//Page no. 341
clc;close;clear;

A=[-1,0,0;1,-2,3;0,2,-3];
G=[A;eye(3,3)];
disp(G);
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
        disp(G)
        for j=1:3
            if(j~=k-1)
                l=G(k,j)
                for i=1:6
                    G(i,j)=G(i,j)-l*G(i,k-1)
                end
            end
        end
        disp(G)
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
    disp(G)
end

//partition g
for i=4:6
    for j=1:3
        T(i-3,j)=G(i,j)
    end
end
disp(T,'T=')

//eigenvalues computation
printf('\n\n\nCharateristic polynomial:')
p=poly(A,'x')
disp(p)
printf('\n\n\nEigenvalues:')
a=roots(p)
disp(a')
//eigenvectors computation
for k=1:3
    m=2
    for l=1:3
        y(l,k)=a(k,1)^(m)
        m=m-1;
    end
end
printf('\n\n')
disp(y,'y=')

//eigenvector computation

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
printf('\n\nEigenvectors :\n')
for i=1:3
    printf('|%.1f|\t\t|%.1f|\t\t|%.1f|',x1(i,1),x2(i,1),x3(i,1))
    printf('\n')
end
