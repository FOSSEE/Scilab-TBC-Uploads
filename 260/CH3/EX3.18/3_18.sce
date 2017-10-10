//Eg-3.18
//pg-119

clear
clc
 
 A=[1.11 -.55 0;-.55 2.44 -.66;0 0 1];
 B=[-93.33;213.34;-25];
 
 es=10^-5;
 imax=10;
 
 X=[0;0;0];
 [r,c] = size(A)
 n = r;
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