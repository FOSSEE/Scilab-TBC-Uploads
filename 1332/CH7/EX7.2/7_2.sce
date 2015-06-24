//Example 7.2
//Inverse in Place without Pivoting
//Page no. 256
clc;clear;close;

A=[3,-6,7;9,0,-5;5,-8,6];   //matrix
B=[3,-6,7;9,0,-5;5,-8,6];   //copied matrix
for i=1:3
    printf('\n\nStage %i',i);
    for j=1:3
        if(i==j)
            B(i,j)=1/B(i,j);
        else
            B(i,j)=A(i,j)/A(i,i);
        end,
    end
    disp(B)
        for j=1:3
            for k=1:3
                if(i~=j)
                    B(j,k)=A(j,k)-A(j,i)*B(i,k);
                end,
            end
        end
        disp(B)
    for j=1:3
        if(i~=j)
            B(j,i)=-1*A(j,i)*B(i,i);
        end,
        
    end
    disp(B)
    A=B;
end
disp(B,'Inverse of Matrix A=')