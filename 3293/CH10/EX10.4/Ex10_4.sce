//page 363
//Example 10.4
clc;
clear;
close;
disp('a = [x1 x2]');
disp('b = [y1 y2]');
disp('f(a,b) = x1*y1 + x1*y2 + x2*y1 + x2*y2');
disp('so, f(a,b) = ');
disp('[x1  x2]  *  |1   1|  *   |y1|');
disp('              |1   1|     |y2|');
disp('So the matrix of f in standard order basis B = {e1,e2} is:');
fb = [1 1;1 1];
disp(fb,'[f]B = ');
P = [1 1;-1 1];
disp(P,'P = ');
disp('Thus, [f]B'' = P''*[f]B*P');
fb1 = P' * fb * P;
disp(fb1,'[f]B'' = ');
//end
