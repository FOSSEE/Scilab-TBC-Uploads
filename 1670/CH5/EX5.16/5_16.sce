//Example 5.16
//Finite Differences
//Page no. 138
clc;close;clear;

printf('   x\tf(x)\tdf(x)  d2f(x)  d3f(x) d4f(x)\n')
printf('----------------------------------------------\n')
x=[0,1;1,-1;2,1;3,-1;4,1;5,0;6,0;7,0];
for i=3:6
    for j=1:8-i
        if x(j+1,i-1)~=0 then
            x(j,i)=x(j+1,i-1)-x(j,i-1)
        end
    end
end
k=-9;
for i=1:8
    printf('    ')
    for j=1:6
        if i==j+k then
            break
        elseif x(i,j)==0 & j~=1 & j~=2 then
            printf('d%iy%i\t',j-1,i-1)
        elseif x(i,j)==0 & i~=1
            printf('y%i\t',i-1)
        else
            printf('%i\t',x(i,j))
        end
    end
    printf('\n')
    k=k+2
end
x1=poly(0,"x")
fx=x(1,2)+x1*x(1,3)+(x1^2-x1)*x(1,4)/2+(x1^3-3*x1^2+2*x1)*x(1,5)/6
for i=1:3
    x(1+i,6)=16;
    printf('\nd5y%i = 16',i)
end
printf('\nElements should be constant\n\n');
i=1;k=2;
for j=5:-1:2
    while i<4
        x(k+1,j)=x(k,j)+x(k,j+1);
        if j>2 then
            printf('\nd%iy%i = %i',j-1,k,x(k+1,j))
        else
            printf('\ny%i = %i',k,x(k+1,j))
        end
        k=k+1;
        i=i+1;
    end
    i=1;k=k-2;
end