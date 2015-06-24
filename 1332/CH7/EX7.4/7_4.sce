//Example 7.4
//Inverse of Triangular Matrices
//Page no. 260
clc;clear;close;

R=[2,4,-4,0;0,3,-3,-3;0,0,4,2;0,0,0,3];    //matrix R
for i=4:-1:1
    for j=4:-1:1
        if(i>j)
            Y(i,j)=0;
        end
        if(i==j)
            Y(i,j)=1/R(i,j);
        end
        if(i<j)
            l=0;
            for k=i+1:j
                l=l-R(i,k)*Y(k,j);
            end
            Y(i,j)=l/R(i,i);
        end    
    end
end
disp(Y,'Inverse of Matrix R=')