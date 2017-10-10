//Eg-3.19
//pg-123

clear
clc
 
 A=[4 2 0;0.5 1 .5;0 3 3];
 B=[2.3;1.1;14];
 
 es=10^-7;
 imax=100;
 
 X=[0;0;0];
 
 iter=1;
 lambda=1;
 [r,c] = size(A)
 n = r;
 
 errorcheck=1;

 //Gauss-Seidel Method
 while errorcheck==1//condition for termination
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
            if X(i)~=0 then
            AbsErr=abs((X(i)-old)/X(i))*100;//absolute error
        else
            output=('error cannot be computed')//since xi cant be equal to zero
        end
        if AbsErr<es
            errorcheck=2;
        end
    end
    iter=iter+1;
end

disp("solution Vector")
disp(X)
disp("iterations required for gauss siedel")
disp(iter)

iter=1;
lambda=1.5;
errorcheck=1;
X=[0;0;0];
//Gauss Siedel method with SOR
while errorcheck==1//condition for termination
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
             if errorcheck==1&X(i)~=0 then
            AbsErr=abs((X(i)-old)/X(i))*100;//absolute error
        else
            output=('error cannot be computed')//since xi cant be equal to zero
        end
        if AbsErr<es
            errorcheck=2;
        end
    end
    iter=iter+1;
end

disp("solution Vector")
disp(X)
disp("iterations required for gauss siedel with SOR")
disp(iter)

disp("these results indicate how the convergence is expedited by over-relaxation")