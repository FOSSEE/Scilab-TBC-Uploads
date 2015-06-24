//Example 7.4

clc;clear;close;
M=7;w=2*%pi/M;

//Calculation of filter co-efficients
k=[0 1 6];
for n=0:M-1
    h(n+1)=sum(exp(-%i*3*w*k).*exp(%i*w*k*n))/M;
end
h=clean(h);

//Displaying filter co-efficients
disp(M,'Filter Order M= ');
disp('Filter co-efficients:');
disp(h,'h(n)= ');

plot2d3(h);
title('Filter transfer function h(n)');xlabel('n-->');