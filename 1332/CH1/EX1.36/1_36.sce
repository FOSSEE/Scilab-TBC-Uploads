//Example 1.36
//Division
//Page no. 28
clc;clear;close;
a=[0.1132e1,0.1132e-6,0.1132e6];b=[0.1000e-99,0.1000e99,0.1000e3];
for i=1:3
    c(i)=a(i)/b(i)
    printf('\nDivision of %.2g by %.3g= %.3g\n',a(i),b(i),c(i))
end
