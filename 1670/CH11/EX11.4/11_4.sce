//Example 11.4
//Gauss-Seidel Method
//Page no. 372
clc;clear;close;

U=[1,2,2,2;0,0,0,2;0,0,0,2;0,0,0,1]
deff('y=d(i,j)','y=(U(i-1,j-1)+U(i+1,j+1)+U(i-1,j+1)+U(i+1,j-1))/4')         //diagonal 5 point  formula
deff('y=s(i,j)','y=(U(i-1,j)+U(i+1,j)+U(i,j-1)+U(i,j+1))/4')         //std 5 point formula
U(2,2)=d(2,2);
for k=0:4
    for i=2:3
        p=3;
        for j=2:3
            if k==0 & i==2 & j==2 then
                U(i,j)=d(i,j)
            else
                U(i,j)=s(i,j)
            end
            if k==0 then
                printf('\n U%i = %g\n',i+j-p,U(i,j))
            else
                printf('\n U%i(%i) = %g\n',i+j-p,k,U(i,j))
            end
        end
        p=2;
    end
    printf('\n\n')
end
printf('\nHence the solution is : \n\n')
for i=2:3
    for j=2:3
        printf(' U%i = %.3f, ',i,U(i,j))
    end
end