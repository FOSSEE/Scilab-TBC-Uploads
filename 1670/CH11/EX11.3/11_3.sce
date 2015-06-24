//Example 11.3
//Gauss-Seidel Method
//Page no. 370
clc;clear;close;

U=[60,60,60,60;40,0,0,50;20,0,0,40;0,10,20,30]
deff('y=d(i,j)','y=(U(i-1,j-1)+U(i+1,j+1)+U(i-1,j+1)+U(i+1,j-1))/4')         //diagonal 5 point  formula
deff('y=s(i,j)','y=(U(i-1,j)+U(i+1,j)+U(i,j-1)+U(i,j+1))/4')         //std 5 point formula
U(2,2)=d(2,2);
for k=0:5
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
        printf(' U%i = %g, ',i,U(i,j))
    end
end