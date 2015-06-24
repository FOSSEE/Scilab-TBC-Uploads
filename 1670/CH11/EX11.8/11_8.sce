//Example 11.7
//Relaxation Method
//Page no. 378
clc;clear;close;
h=1/3;k=1/3;
for i=0:3
    for j=0:3
        if i==0 | j==0 then
            U(4-i,j+1)=i*h+j*k
        elseif i==3 | j==3
            U(4-i,j+1)=i*h+j*k
        end
    end
end
//disp(U,'U = ')
for i=1:4
    for j=1:4
        if U(i,j)==0 then
            U(i,j)=1;
        end
    end
end
U(3,2)=U(3,2)-1/3;
U(2,2)=U(2,2)-1/3;
U(3,3)=U(3,3)-1/3;
U(3,2)=U(3,2)-1/3;
U(2,3)=U(2,3)+1/3;
//disp(U,'U = ')
for i=2:3
    for j=2:3
        U1(i,j)=U(i+1,j)+U(i-1,j)+U(i,j+1)+U(i,j-1)-4*U(i,j)
    end
end
for i=2:3
    for j=2:3
        U(i,j)=U1(i,j)
    end
end
//disp(U,'U = ')
disp(U,'U = ')
disp(' ')
k=1;
for i=2:3
    for j=2:3
        printf('\t u%i = %g ,',k,U(i,j))
        k=k+1
    end
end
