//Given's Method
//reduce A1 to tridiagonal form
clc;
clear;
close();
format('v',7);
A1 = [2 -1 1 4;-1 3 1 2;1 1 5 -3;4 2 -3 6];
disp(A1,'A = ')
// zero is created at (1,3)
//by taking the rotation matrix X1=[c 0 s; 0 1 0;-s 0 c]; where c=cos and s=sin
//O is theta

count =0;
for i=1:(4-2)
    for j=i+2:4
        if abs(A1(i,j))>0 then
            p=i+1;q=j;
            O = -atan(A1(p-1,q)/(A1(p-1,p)));
            c = cos(O);
            s = sin(O);
            X = eye(4,4);
            X(p,p)=c;
            X(q,q)=c;
            X(p,q)=s;
            X(q,p)=-s;
            
            A1 = X'*A1*X;  
            disp(A1, 'Ai = ');
            disp(X ,'X = ');
            disp(O, 'Theta = ');
            count = count+1;
        end
    end
end
disp(A1,'Reduced A1 to trigonal matrix is : ')