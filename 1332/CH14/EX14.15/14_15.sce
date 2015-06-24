//Example 14.15
//Trapezoidal and Simpsons Rule
//Page no. 487
clc;close;clear;

x(1)=0;y(1)=0;h=0.25
for i=2:5
    x(i)=x(i-1)+h
    y(i)=y(i-1)+h
end
printf(' y/x\t|\t%g\t%g\t%g\t%g\t%g',x(1),x(2),x(3),x(4),x(5))
printf('\n--------|-------------------------------------------')
for i=1:5
     printf('\n%g\t|\t',y(i))
    for j=1:5
        z(i,j)=x(j)*y(i)
        printf('%g\t',z(i,j))
    end
end

//trapezoidal rule
s=0;
for i=1:5
    for j=1:5
        if i==1 & j==1 then
            s=s+z(i,j)
        elseif i==5 & j==5
            s=s+z(i,j)
        else
            s=s+2*z(i,j)
        end
    end
end
s=(s*(h^2))/4
printf('\n\n')
disp(s,'Trapezoidal Rule Sum = ')
printf('\n\n')

//simpsons rule
s=0;
for i=1:5
    for j=1:5
        if i/2-int(i/2)==0 & j/2-int(j/2)==0 then
            if i==j then
                s=s+16*z(i,j)
            else
                s=s+4*z(i,j)
            end
            
        elseif i/2-int(i/2)~=0 & j/2-int(j/2)~=0
            s=s+z(i,j)
        else
            s=s+4*z(i,j)
        end
    end
end
s=(s*(h^2))/9
disp(s,'Simpsons Rule Sum = ')