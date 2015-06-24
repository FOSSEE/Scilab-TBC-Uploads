//ques4
clear
clc
disp('See figure in question');
disp('using numerical poissons equation u(i-1)(j)+u(i+1)(j)+u(i)(j-1)+u(i)(j+1)=h^2f(ih,jh)');
disp('Here f(x,y)=-10(x^2+y^2+10');
disp('Here for u1 i=1,j=2 putting in equation this gives : ');
disp('u1=1/4(u2+u3+150');
disp('similarly ');
disp('u2=1/4(u1+u4+180');
disp('u3=1/4(u1+u4+120');
disp('u4=1/4(u2+u3+150');
disp('reducing therse equations since u4=u1');
disp('4u1-u2-u3-150=0');
disp('u1-2u2+90=0');
disp('u1-2u3+60=0');
disp('Solvng these equations by Gauss jordon method ');
A=[4 -1 -1;1 -2 0;1 0 -2];
r=[150;-90;-60]; 
D=A;d=r;
n=3;

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