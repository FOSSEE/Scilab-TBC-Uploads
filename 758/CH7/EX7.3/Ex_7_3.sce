//Example 7.3

clc;clear;close;
fp=2000;        //passband frequency
F=9600;         //sampling frequancy

//Calculation of filter co-efficients
a0=1/F*integrate('1','t',-fp,fp);
for n=1:10;
a(1,n)=2/F*integrate('cos(2*%pi*n*f/F)','f',-fp,fp);
end
h=[a(:,$:-1:1)/2 a0 a/2];

//Displaying filter co-efficients
disp(F,'Sampling frequency F= ',fp,'Assumption: Passband frequency fp= ');
disp('Filter co-efficients:');
disp(a0,'h(0)= ');disp(a/2,'h(n)=h(-n)=');

n=-10:10;
plot2d3(n,h);
title('Filter transfer function h(n)');xlabel('n-->');