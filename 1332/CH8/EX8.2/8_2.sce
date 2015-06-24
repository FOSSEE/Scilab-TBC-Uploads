//Example 8.2
//Gauss-Seidel Method
//Page no. 274
clc;clear;close;

A=[8,-3,2;4,11,-1;6,3,12];        //equation matrix
B=[20;33;36]                     //solution matrix
for i=0:10
    X(i+1,1)=i;
end
for i=2:4
    X(1,i)=0;
end
for r=1:10
    for i=1:3
        k1=0;
        for j=1:i-1
            
                k1=k1-A(i,j)*X(r+1,j+1);
            
        end
        k2=0;
        for j=i+1:3
            
                k2=k2-A(i,j)*X(r,j+1);
            
        end
        X(r+1,i+1)=(k1+k2+B(i,1))/A(i,i);
    end
end
printf('   r\t   x(r)\t\ty(r)\t     z(r)');
printf('\n    ------------------------------------')
disp(X)
printf('\n\nAfter 9 iterations exact solution is:\nx=%i\ty=%i\tz=%i',X(10,2),X(10,3),X(10,4))