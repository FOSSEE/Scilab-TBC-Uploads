//Example 20.4
//Seven Point Formula
//Page no. 686
clc;clear;close;
printf('Itr\t\t U111\t\t U211\t\t U121\t\t U221\n-----------------------------------------------------------------------\n')
for i=1:4
    for j=1:4
        for k=3:-1:1
            if k==3 then
                u(i,j,k)=100
            elseif (i==1 | i==4 | j==1 | j==4) & k==2
                u(i,j,k)=300
            elseif k==2
                u(i,j,k)=0
            elseif (i==1 | i==4 | j==1 | j==4) & k==1
                u(i,j,k)=500
            else
                u(i,j,k)=700
            end
        end
    end
end
k=2
for l=0:14
    printf('  %i\t\t%.3f\t\t%.3f\t\t%.3f\t\t%.3f\n',l,u(3,2,2),u(3,3,2),u(2,2,2),u(2,3,2))
    for i=3:-1:2
        for j=2:3
            u1(i,j)=(u(i,j+1,k)+u(i,j-1,k)+u(i-1,j,k)+u(i+1,j,k)+u(i,j,k+1)+u(i,j,k-1))/6
        end
    end
    for i=3:-1:2
        for j=2:3
            u(i,j,2)=u1(i,j)
        end
    end
end