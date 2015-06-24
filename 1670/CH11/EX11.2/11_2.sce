//Example 11.2
//Gauss-Seidel Method
//Page no. 368
clc;clear;close;

U=[0,1,2,0;1,0,0,4;2,0,0,5;0,4,5,0]
k=1;
for i=2:3
    for j=2:3
        if (i==2 & j==3) | (i==3 & j==2) then
            U(i,j)=0
        else
            U(i,j)=(U(i-1,j)+U(i+1,j)+U(i,j-1)+U(i,j+1))/4
        end
        printf(" u%i=%g, ",k,U(i,j))
        k=k+1
    end
end
for l=1:7
    printf('\n\n')
    k=1;
    for i=2:3
    for j=2:3
        U(i,j)=(U(i-1,j)+U(i+1,j)+U(i,j-1)+U(i,j+1))/4
        printf("\n u%i(%i)=%.13g\n",k,l,U(i,j))
        k=k+1
    end
end
end