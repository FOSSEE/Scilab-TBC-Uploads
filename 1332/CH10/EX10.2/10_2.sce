//Example 10.2
//Contraction Method and Seidel Method
//Page no. 315
clc;clear;close;
x(1)=0;y(1)=0
printf('(a) Contraction Mapping\n\nn\txn\t\tyn\n--------------------------------\n 0\t%f\t%f\n',x(1),y(1))
for i=2:9
    x(i)=sin(x(i-1)+y(i-1))
    y(i)=cos(x(i-1)-y(i-1))
    printf(' %i\t%f\t%f\n',i-1,x(i),y(i))
end
printf('\n\n\n(b) Seidel Method\n\nn\txn\t\tyn\n--------------------------------\n 0\t%f\t%f\n',x(1),y(1))
for i=2:9
    x(i)=sin(x(i-1)+y(i-1))
    y(i)=cos(x(i)-y(i-1))
    printf(' %i\t%f\t%f\n',i-1,x(i),y(i))
end