//Example 1.35
//Multiplication
//Page no. 28
clc;clear;close;
a=[0.9632e12,0.1132e12,0.1132e52,0.1132e-52];b=[0.5427e-15,0.1027e15,0.1027e50,0.1027e-50];
for i=1:4
    c(i)=a(i)*b(i)
    printf('\nMultiplication of %.3g and %.2g = %.6g\n',a(i),b(i),c(i))
end
