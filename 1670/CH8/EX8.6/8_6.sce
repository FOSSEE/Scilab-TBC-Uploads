//Example 8.6
//Simpsons 1/3rd Rule and Bessels Quadrature
//Page no 271
clc;clear;close;

z=[0,0.5;0.25,0.4794;0.5,0.4594;0.75,0.4398;1,0.4207]
h=0.25;
for i=1:3
    printf('\nWhen x = %g',z(i,1))
    if i==1 then
        printf(' clearly we have \n\n')
        for j=1:5
            y(i,j)=1
        end
    elseif i==2
        printf(', using Bessels formula \n\n')
        for j=1:5
            if j==1 then
                y(i,j)=1
            else
                y(i,j)=1+h*(z(i-1,2)*y(i-1,j)+z(i,2)*y(i,j-1))/2
            end
        end
    else
        printf(', using Simpsons formula \n\n')
        for j=1:5
            if j==1 then
                y(i,j)=1+h*(z(i-2,2)+4*z(i-1,2)+z(i,2))/3
            else
                y(i,j)=1+h*(z(i-2,2)*y(i-2,j)+4*z(i-1,2)*y(i-1,j)+z(i,2)*y(i,j-1))/3
            end
        end
    end
    for j=1:5
        printf('y%i(%g) = %g\n\n',j,z(i,1),y(i,j))
    end
end