//Example 11.7
//Relaxation Method
//Page no. 376
clc;clear;close;

for i=0:4
    for j=0:4
        if i==0 | j==0 then
            U(5-i,j+1)=0
        elseif i==4 | j==4
            U(5-i,j+1)=(i*j)^2
        else
            U(5-i,j+1)=0;
        end
    end
end
S=['A','B','C','D','E','F','G','H','I']
disp(U)
deff('y=d(i,j)','y=(U(i-1,j-1)+U(i+1,j+1)+U(i-1,j+1)+U(i+1,j-1))/4')         //diagonal 5 point  formula
deff('y=s(i,j,l)','y=(U(i-l,j)+U(i+l,j)+U(i,j-l)+U(i,j+l))/4')         //std 5 point formula
U(3,3)=s(3,3,2);
for k=0:0
    p=3;
    for i=2:4
        for j=2:4
            if k==0 & (i==3 & j==3) then
                printf('\n U %s(%i) = %g\n',S(i+j-p),k,U(i,j))
                continue
            end
            if k==0 & i==4 & j==2 then
                U(i,j)=d(i,j)
            else
                U(i,j)=s(i,j,1)
            end
            if k==0 then
                printf('\n U %s = %g\n',S(i+j-p),U(i,j))
            else
                printf('\n U %s(%i) = %g\n',S(i+j-p),k,U(i,j))
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
        printf(' U%s = %.3f, ',S(i+j-p),U(i,j))
    end
    p=p-2
end