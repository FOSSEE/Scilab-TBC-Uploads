//Example 20.3
//Finite Difference Method
//Page no. 685
clc;clear;close;

printf('Itr\t\t U11\t\t U21\t\t U12\t\t U22\n-----------------------------------------------------------------------\n')
for i=1:4
    for j=1:4
        if j==1 then
            u(i,j)=0
        elseif j==4
            u(i,j)=100
        elseif (i==1 | i==4) & j==2
            u(i,j)=25
        elseif i==1 | i==4
            u(i,j)=u(i,j-1)*2
        else
            u(i,j)=0
        end
    end
end
for k=0:17
    printf('  %i\t\t%.3f\t\t%.3f\t\t%.3f\t\t%.3f\n',k,u(3,2),u(3,3),u(2,2),u(2,3))
    for i=3:-1:2
        for j=2:3
            u1(i,j)=(u(i,j+1)+u(i,j-1)+u(i-1,j)+u(i+1,j))/4
        end
    end
    for i=3:-1:2
        for j=2:3
            u(i,j)=u1(i,j)
        end
    end
end
disp(u,'U = ')