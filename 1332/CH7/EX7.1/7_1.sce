//Example 7.1
//Gauss-Jordan Two Array Method
//Page no. 254
clc;clear;close;

A=[2,6,1;3,9,2;0,-1,3];   //matrix
C=eye(3,3);               //Unit Matrix
for i=1:3                  //interchange of row 1 and 2
    B(1,i)=A(1,i);
    A(1,i)=A(2,i);
    A(2,i)=B(1,i);
    B(2,i)=C(1,i);
    C(1,i)=C(2,i);
    C(2,i)=B(2,i);
end
printf('\n')

//printing of matrices A and C
for i=1:3
    for j=1:3
        printf('%f\t',A(i,j))
    end
    printf('|\t');
    for j=1:3
        printf('%f\t',C(i,j))
    end
    printf('\n')
end
printf('\n\n');


for i=1:3
    A(1,i)=A(1,i)/3;
    C(1,i)=C(1,i)/3;
end

//printing of matrices A and C
for i=1:3
    for j=1:3
        printf('%f\t',A(i,j))
    end
    printf('|\t');
    for j=1:3
        printf('%f\t',C(i,j))
    end
    printf('\n')
end
printf('\n\n');

for i=1:3
    A(2,i)=A(2,i)-2*A(1,i);
    C(2,i)=C(2,i)-2*C(1,i);
end

//printing of matrices A and C
for i=1:3
    for j=1:3
        printf('%f\t',A(i,j))
    end
    printf('|\t');
    for j=1:3
        printf('%f\t',C(i,j))
    end
    printf('\n')
end
printf('\n\n');

for i=1:3        //interchange of row 2 and 3
    B(1,i)=A(2,i);
    A(2,i)=A(3,i);
    A(3,i)=B(1,i);
    B(2,i)=C(2,i);
    C(2,i)=C(3,i);
    C(3,i)=B(2,i);
end

//printing of matrices A and C
for i=1:3
    for j=1:3
        printf('%f\t',A(i,j))
    end
    printf('|\t');
    for j=1:3
        printf('%f\t',C(i,j))
    end
    printf('\n')
end
printf('\n\n');

for i=1:3
    A(2,i)=-1*A(2,i);
    C(2,i)=-1*C(2,i);
end
for i=1:3
    A(1,i)=A(1,i)-3*A(2,i);
    C(1,i)=C(1,i)-3*C(2,i);
end

//printing of matrices A and C
for i=1:3
    for j=1:3
        printf('%f\t',A(i,j))
    end
    printf('|\t');
    for j=1:3
        printf('%f\t',C(i,j))
    end
    printf('\n')
end
printf('\n\n');

for i=1:3
    A(3,i)=-3*A(3,i);
    C(3,i)=-3*C(3,i);
end

//printing of matrices A and C
for i=1:3
    for j=1:3
        printf('%f\t',A(i,j))
    end
    printf('|\t');
    for j=1:3
        printf('%f\t',C(i,j))
    end
    printf('\n')
end
printf('\n\n');

for i=1:3
    A(1,i)=A(1,i)-A(3,i)*(29/3);
    C(1,i)=C(1,i)-29*C(3,i)/3;
end
for i=1:3
    A(2,i)=A(2,i)+A(3,i)*3;
    C(2,i)=C(2,i)+C(3,i)*3;
end

//printing of matrices A and C
for i=1:3
    for j=1:3
        printf('%f\t',A(i,j))
    end
    printf('|\t');
    for j=1:3
        printf('%f\t',C(i,j))
    end
    printf('\n')
end
printf('\n\n');

disp(C,'Inverse Matrix of A')