//Example 8.1
//Jacobi Method
//Page no. 273
clc;clear;close;

A=[8,-3,2;4,11,-1;6,3,12];        //equation matrix
B=[20;33;36]                     //solution matrix
for i=0:19
    X(i+1,1)=i;
end
for i=2:4
    X(1,i)=0;
end
for r=1:19
    for i=1:3
        k=0;
        for j=1:3
            if(i~=j)
                k=k-A(i,j)*X(r,j+1);
            end
        end
        X(r+1,i+1)=(k+B(i,1))/A(i,i);
    end
end
printf('   r\t   x(r)\t\ty(r)\t     z(r)');
printf('\n    ------------------------------------')
disp(X)
printf('\n\nAfter 18 iterations exact solution is:\nx=%i\ty=%i\tz=%i',X(19,2),X(19,3),X(19,4))