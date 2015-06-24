//Example 1.33
//Add
//Page no. 27
clc;clear;close;
a=[0.4632e3,0.4632e99];b=[0.5427e3,0.5427e99];

for i=1:2
    c(i)=a(i)+b(i)
    printf('\nAddition of %.2g and %.2g = %.5g\n',a(i),b(i),c(i))
end
