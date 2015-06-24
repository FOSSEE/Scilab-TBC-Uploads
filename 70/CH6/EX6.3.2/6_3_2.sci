//332
clear;
close;
clc;
A=[-1 1 0;0 -1 1];
disp(A,'A=');
[U diagnl V]=svd(A);
disp(U,'U=');
disp(diagnl,'Diagonal=');
disp(V','V''=');
disp(U*diagnl*V','A=U*diagonal*V''=')
//end