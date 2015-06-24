//page 12
//Example 1.8
clear;
close;
clc;
n = rand();
n = round(n*10);
disp(eye(n,n));
printf('This is an Identity matrix of order %d * %d',n,n);
disp('And It is a row reduced matrix.');
m = rand();
n = rand();
m = round(m*10);
n = round(n*10);
disp(zeros(m,n));
printf('This is an Zero matrix of order %d * %d',m,n);
disp('And It is also a row reduced matrix.');
a = [0 1 -3 0 1/2;0 0 0 1 2;0 0 0 0 0];
disp(a,'a = ');
disp('This is a non-trivial row reduced matrix.');
//end
