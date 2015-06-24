//Orthogonal decomposition - QR method
//reduce A to tridiagonal form
clc;
clear;
close();
format('v',7);
A1 = [1 4 2;-1 2 0;1 3 -1];
disp(A1, 'A = ');
// zero is created in lower triangle
//by taking the rotation matrix X1=[c s 0;-s c 0;0 0 1]; where c=cos and s=sin
//O is theta

Q = eye(3,3);
for i=2:3
    for j=1:i-1
        p=i;q=j;
        O = -atan(A1(p,q)/(A1(q,q)));
        c = cos(O);
        s = sin(O);
        X = eye(3,3);
        X(p,p)=c;
        X(q,q)=c;
        X(p,q)=-s;
        X(q,p)=s;
        A1 = X'*A1;  
        Q = Q*X;
        disp(A1,X,'The X and A matrix : ');
    end
end
R = A1;
disp(R,Q,'Hence the original matrix can be decomposed as : ')