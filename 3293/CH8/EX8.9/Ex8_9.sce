//page 278
//Example 8.9
clc;
clear;
close;
a = round(rand(1,2) * 10);
x = a(1);
y = a(2);
b = [-y x];
disp(a,'(x,y) = ');
disp(b,'(-y,x) = ');
disp('Inner product of these vectors is:');
t = -x*y + y*x;
disp(t,'(x,y)|(-y,x) = ');
disp('So, these are orthogonal.');
disp('------------------------------------------');
disp('If inner product is defined as:');
disp('(x1,x2)|(y1,y2) = x1y1- x2y1 - x1y2 + 4x2y2');
disp('Then, (x,y)|(-y,x) = -x*y+y^2-x^2+4*x*y = 0 if,');
disp('y = 1/2(-3 + sqrt(13))*x');
disp('or');
disp('y = 1/2(-3 - sqrt(13))*x');
disp('Hence,');
if y == 1/2*(-3 + sqrt(13))*x | y == 1/2*(-3 - sqrt(13))*x then
disp(a);
disp('is orthogonal to');
disp(b);
else
disp(a);
disp('is not orthogonal to');
disp(b);    
end
//end

