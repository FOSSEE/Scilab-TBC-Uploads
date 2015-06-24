//Example 8.3
//SOR Method
//Page no. 275
clc;clear;close;

A=[5,2,1;-1,4,2;2,-3,10];
B=[-12;20;3];
w=0.9;
for i=0:13
    X(i+1,1)=i;
end
X(1,2)=-2.4;
X(1,3)=5;
X(1,4)=0.3;
for r=1:13
    for i=1:3
        k1=0;
        for j=1:i-1
            
                k1=k1-A(i,j)*X(r+1,j+1);
            
        end
        k2=0;
        for j=i+1:3
            
                k2=k2-A(i,j)*X(r,j+1);
            
        end
        X(r+1,i+1)=(1-w)*X(r,i+1)+(w*k1+w*k2+w*B(i,1))/A(i,i);
    end
end
printf('   r\t   x(r)\t\ty(r)\t     z(r)');
printf('\n    ------------------------------------');
disp(X);
printf('\n\nAfter 12 iterations exact solution is:\nx=%i\ty=%i\tz=%i',X(13,2),X(13,3),X(13,4));