//Example 6.3
//Gauss-Jordan Method
//Page no. 224

clc;clear;close;

A=[5,10,1,28;4,8,3,29;1,1,1,6];     //augmented matrix

for i=1:3
    j=i
    while (A(i,i)==0 & j<=3)
        for k=1:4
            B(1,k)=A(j+1,k)
            A(j+1,k)=A(i,k)
            A(i,k)=B(1,k)
        end
        disp(A)
        j=j+1
    end
    disp(A)
    for k=4:-1:i
        A(i,k)=A(i,k)/A(i,i)
    end
    disp(A)
    for k=1:3
        if(k~=i) then
           l=A(k,i)/A(i,i)
           for m=i:4
               A(k,m)=A(k,m)-l*A(i,m)
           end
        end
       
    end
    disp(A)
end

for i=1:3
    printf('\nx(%i) = %g\n',i,A(i,4))
end