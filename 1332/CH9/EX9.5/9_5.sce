//Example 9.5
//Vector Computation
//Page no. 299
clc;clear;close;

X=[2,3,0,1];
n=X(1);
for i=2:4
    if(n<X(i))
        n=X(i);
    end
end
printf('\nMaximum Value (n)=%i\n',n)
for i=1:4
    X(i)=X(i)/n;
end
disp(X,'Normalized X=')
k=0;
for i=1:4
    k=k+X(i)^2;
end
sigma=X(1)*abs(1/X(1))*sqrt(k);
printf('\nsigma=%f\n',sigma);
X(1)=X(1)+sigma;
printf('\nModified x1 = %g\n',X(1))
for i=1:4
    U(1,i)=X(i);
end
disp(U,'U=')
p=sigma*X(1);sigma=n*sigma;
printf('\n p = %f\n\n sigma = %f',p,sigma);
printf('\n\n\nNote : There is a computation error in calculation of U1')