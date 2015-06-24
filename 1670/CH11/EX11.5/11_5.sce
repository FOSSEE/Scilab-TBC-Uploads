//Example 11.5
//Gauss-Seidel Method
//Page no. 373
clc;clear;close;

U=[0,500,1000,500,0;1000,0,0,0,1000;2000,0,0,0,2000;1000,0,0,0,1000;0,500,1000,500,0]
deff('y=d(i,j)','y=(U(i-1,j-1)+U(i+1,j+1)+U(i-1,j+1)+U(i+1,j-1))/4')         //diagonal 5 point  formula
deff('y=s(i,j,l)','y=(U(i-l,j)+U(i+l,j)+U(i,j-l)+U(i,j+l))/4')         //std 5 point formula
U(3,3)=s(3,3,2);
for k=0:10
    p=3;
    for i=2:4
        for j=2:4
            if k==0 & (i==3 & j==3) | (i==2 & j==4) | (i==4 & j==2) | (i==4 & j==4) then
                printf('\n U%i(%i) = %g\n',i+j-p,k,U(i,j))
                continue
            end
            if k==0 & i==2 & j==2 then
                U(i,j)=d(i,j)
            else
                U(i,j)=s(i,j,1)
            end
            if i==2 & j==2 then
                U(2,4)=U(2,2);
                U(4,2)=U(2,2);
                U(4,4)=U(2,2);
            end
            if k==0 then
                printf('\n U%i = %g\n',i+j-p,U(i,j))
            else
                printf('\n U%i(%i) = %g\n',i+j-p,k,U(i,j))
            end
        end
        p=p-2;
    end
    printf('\n\n')
end
printf('\nHence the solution is : \n\n')
p=3;
for i=2:4
    for j=2:4
        printf(' U%i = %.3f, ',i+j-p,U(i,j))
    end
    p=p-2
end