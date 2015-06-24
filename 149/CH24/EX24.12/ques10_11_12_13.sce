//ques 10 , ques 11
//Linear equation system 'Ax=r' by Gauss elimination method.
clc
clear

disp('Solution of N-equation [A][X]=[r]')
n=input ('Enter number of Equations :');
A=input ('Enter Matrix [A]:');
r=input ('Enter Matrix [r]:'); 
D=A;d=r;

//create upper triangular matrix 
s=0;
for j=1:n-1 
    if A(j,j)==0
        k=j;
        for k=k+1:n
            if A(k,j)==0
                continue 
            end
            break
        end
        B=A(j,:); C=r(j); 
        A(j,:)=A(k,:); r(j)=r(k);
        A(k,:)=B; r(k)=C;
    end
    for i=1+s:n-1
        L=A(i+1,j)/A(j,j);
        A(i+1,:)=A(i+1,:)-L*A(j,:);
        r(i+1)=r(i+1)-L*r(j);
    end
    s=s+1;
end 
//Solution of equations
x(n)=r(n)/A(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n 
        sum=sum+A(i,j)*x(j);
    end
    x(i)=(1/A(i,i))*(r(i)-sum);
end

//hecking with scilab functions
p=inv(D)*d;
//Output
disp('@----------------------------------------------------------@')
disp('Output [B][x]=[b]')
disp('Upper riangular Matrix [B] =');disp(A)
disp('Matrix [b] =');disp(r)
disp('solution of linear equations :');disp(x')
disp('solve with matlab functions(for checking):');disp(p) 
