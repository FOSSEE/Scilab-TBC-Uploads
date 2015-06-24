//Example 7.3
//Inverse in Place with Pivoting
//Page no. 258
clc;clear;close;

A=[3,-6,7;9,0,-5;5,-8,6];     //matrix
B=[3,-6,7;9,0,-5;5,-8,6];      //copied matrix

for i=1:3
    printf('\n\nStage %i',i)
    if(i<3)
        for j=1:3         //interchange of rows
            C(i,j)=A(i,j);
            A(i,j)=A(i+1,j);
            A(i+1,j)=C(i,j);
            C(i,j)=B(i,j);
            B(i,j)=B(i+1,j);
            B(i+1,j)=C(i,j);
        end
    end
    disp(B)
    for j=1:3
        if(i==j)
            B(i,j)=1/B(i,j);
        else
            B(i,j)=A(i,j)/A(i,i);
        end,
    end
        for j=1:3
            for k=1:3
                if(i~=j)
                    B(j,k)=A(j,k)-A(j,i)*B(i,k);
                end,
            end
        end
    for j=1:3
        if(i~=j)
            B(j,i)=-1*A(j,i)*B(i,i);
        end,
        
    end
    disp(B)
    A=B;
end
for j=1:3      //interchange of column 2 and 3
    C(j,1)=A(j,2);
    A(j,2)=A(j,3);
    A(j,3)=C(j,1);
end
for j=1:3      //interchange of column 2 and 1
    C(j,1)=A(j,2);
    A(j,2)=A(j,1);
    A(j,1)=C(j,1);
end
disp(A,'Inverse of Matrix A=')