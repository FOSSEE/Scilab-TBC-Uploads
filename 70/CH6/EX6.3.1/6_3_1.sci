//332
clear;
close;
clc;
A=[-1 2 2]';
disp(A,'A=');
[U diagnol V]=svd(A);
disp(U,'U=');
disp(diagnol,'diagnol=');
disp(V','V''=');
disp(U*diagnol*V','A=U*diagnol*V''')
//end