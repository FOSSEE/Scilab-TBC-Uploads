//Eg-3.17
//pg-114

clear
clc

 A=[-3.5 1 1.5;1 4 -1;-2 -.6 -3.5];
 B=[2.5;4;-16];
 
 es=10^-5;
 imax=10;
 [r,c] = size(A)
 n = r;
 X=[0;0;0];
 
 iter=1;
 lambda=1;
 
 while iter<imax//condition for termination
    for i=1:n
        summ=B(i);
        pivot=A(i,i);
        if pivot==0
            error('gsie not applicable');//to avoid a/0 forms
        end
        old=X(i);
        for j=1:n
            if i~=j
                summ=summ-A(i,j)*X(j);
            end
        end
            X(i)=(lambda*summ/pivot)+(1-lambda)*old;//relaxation
    end
    iter=iter+1;
end

disp("Solution after 10 iterations")
disp(X)