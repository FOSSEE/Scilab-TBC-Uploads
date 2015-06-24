//Example 21.5
//Poissons Partial Differential Equation
//Page no. 733
clc;clear;close;

s=["st","nd","rd"]
for i=4:20
    s(i)="th"
end
h=0.25;deff('y=f(x)','y=x^3');y=1;x=0;
for i=1:6
    
    
    if i~=6 then
        printf('%g\t|',y)
        y=y-h;
        x=0;
        for j=1:5
            if i==1 | i==5 | j==5 then
                P(i,j)=f(x)
            else
                P(i,j)=0
            end
        printf('%f\t',P(i,j))
        x=x+h;
        end
    else
        printf('---------------------------------------------------------------------------------\n\t')
        x=0;
        for j=1:5
            printf('   %g\t\t',x)
            x=x+h
        end
    end
    printf('\n')
end

printf('\n\n\n')

for l=0:17
    y=1;
    if l~=0 then
        printf('After the %i%s Iteration : \n------------------------------------------------------\n  %i',l,s(l),l)
    for i=1:6
        if i~=6 then
            printf('\t%g',y)
        y=y-h
            for j=1:5
            printf('\t%.3f',P(i,j))
           end
        else
            x=0;
            printf('\t')
            for j=1:5
                printf('\t%g',x)
                x=x+h 
            end
        end
        printf('\n')
    end
    printf('------------------------------------------------------\n')
end
y=0;
    for i=4:-1:2
        y=y+h
        for j=2:4
            P1(i,j)=(P(i,j+1)+P(i,j-1)+P(i-1,j)+P(i+1,j)-h^2*y)/4
        end
    end
    for i=4:-1:2
        for j=2:4
            P(i,j)=P1(i,j)
        end
    end
end