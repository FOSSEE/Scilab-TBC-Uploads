//Example 11.9
//Gauss-Seidel Method
//Page no. 380
clc;clear;close;

U=eye(4,4)-eye(4,4)
U(2,1)=150;U(3,1)=120;
U(2,4)=180;U(3,4)=150
deff('y=d(i,j)','y=(U(i-1,j-1)+U(i+1,j+1)+U(i-1,j+1)+U(i+1,j-1))/4')         //diagonal 5 point  formula
deff('y=s(i,j)','y=(U(i-1,j)+U(i+1,j)+U(i,j-1)+U(i,j+1))/4')         //std 5 point formula
for k=1:6
    for i=2:3
        p=3;
        for j=2:3
                U(i,j)=s(i,j)
                if i==2 & j==2 then
                    U(i+1,j+1)=U(i,j)
                elseif i==3 & j==3
                    continue
                end
                printf('\n U%i(%i) = %g\n',i+j-p,k,U(i,j))
        end
        p=2;
    end
    printf('\n\n')
end
printf('\nHence the solution is : \n\n')
    p=3;
for i=2:3

    for j=2:3
        printf(' U%i = %.3f, ',i+j-p,U(i,j))
    end
    p=2
end