//Example 1.34
//Subtraction
//Page no. 27
clc;clear;close;
a=[0.5427e-3,0.9627e4,0.9627e-99];b=[0.9632e-4,0.9622e4,0.9622e-99];
for i=1:3
    c(i)=a(i)-b(i)
    printf('\nSubtraction of %.2g from %.3g = %.6g\n',a(i),b(i),c(i))
end
