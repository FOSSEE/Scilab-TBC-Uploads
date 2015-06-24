//Scilab Code for Example 10.11 of Signals and systems by
//P.Ramakrishna Rao
//System Identification
//Cross Correlation
clear;
clc;
clear x n a y h z;
x=[1,1,1,1,0,0];
y=[1,3,6,10,12,12,10,6,3,1];
h(1)=y(1)/x(1);
for n=2:7
    for k=1:n-1
        z(k)=(h(k)*x(n-k));
    h(n)=(y(n)-sum(z));
    end
end
disp(h,'h(n)');
n=1:7;
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3(n,h,-4);
title('System Response  h(n)');
