//Example 6.10
//Solving Matrices
//Page no. 244
clc;close;clear;
warning('off')
for i=1:7
    s=0;
    for j=1:7
        A(i,j)=360360/(i+j)
    end
    B(i,1)=1;
end
X=inv(A)*B
disp(360360*X,'The Solution by 360360*X= ')
disp(X,'Final Solution = ')