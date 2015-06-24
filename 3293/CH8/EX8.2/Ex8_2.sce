//page 271
//Example 8.2
clc;
clear;
close;
a = round(rand(1,2) * 10)
b = round(rand(1,2) * 10)
disp(a,'a = ');
disp(b,'b = ');
x1 = a(1);
x2 = a(2);
y1 = b(1);
y2 = b(2);
t = x1*y1 - x2*y1 - x1*y2 + 4*x2*y2;
disp(t,'Then, a|b = ');
//end
