//Scilab Code for Example 7.6 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear x y1 y y2 q t n;
clear;
//y(n)=x(n)-x(n-1);
x=[2,4,3,6,7]
for n=2:5
    y(1,n)=x(n)-x(n-1);
end
disp(y,'This input gives the output:');
disp('For a shift (n0) of 2 seconds');
disp('At n=3 seconds:');
n=5;
b=y(n-2);
a=x(n-2)-x(n-2-1);
disp(a,'x(n-2):');
disp(b,'is equal to y(n-2):');
disp('Hence the system is Shift invariant/fixed');

