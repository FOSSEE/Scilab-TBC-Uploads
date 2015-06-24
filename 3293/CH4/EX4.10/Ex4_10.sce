//page 135
//Example 4.10
clc;
clear;
close;
x = poly(0,"x");
P = x^2 + 1;
disp(P,'P = ');
disp('P is reducible over complex numbers as: ');
disp('=',P);
disp('(x-i)(x+i)');
disp('Whereas, P is irreducible over real numbers as:.');
disp('=',P);
disp('(ax + b)(a''x + b'')');
disp('For, a,a'',b,b'' to be in R,');
disp('aa'' = 1');
disp('ab'' + ba'' = 0');
disp('bb'' = 1');
disp('=> a^2 + b^2 = 0');
disp('=> a = b = 0');
//end
