//Example 11.1
//Gauss-Seidel Method
//Page no. 366
clc;clear;close;

U=[50,100,100,50;0,0,0,0;0,0,0,0;0,0,0,0]
A=[4,0,0,-1;0,4,-1,0;0,-1,4,0;-1,0,0,4]          //equation matrix
B=[150;150;0;0]          //solution matrix
X=inv(A)*B
for i=1:4
    printf('\n U%i = %g\n',i,X(i))
end

//Jacobi method

for k=1:2
    printf('\n')
    p=0;
for i=1:2
    for j=1:2
        U(i+1,j+1)=X(i+p)
    end
    p=2;
end
p=3;
for i=2:3
    for j=2:3
        X(i+j-p)=(U(i,j-1)+U(i,j+1)+U(i-1,j)+U(i+1,j))/4
    end
    p=2;
end
for i=1:4
    printf('\n U%i(%i) = %g\n',i,k,X(i))
end
printf('\n')
end
printf('\nHence the solution is : \n\n')
for i=1:4
    printf(' U%i = %g, ',i,X(i))
end