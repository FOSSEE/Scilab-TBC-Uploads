//page 39
//Example 2.11
clear;
clc;
close;
disp('V is the space of all polynomial functions over F.');
disp('S contains the functions as:')
x = poly(0,"x");
n = round(rand()*10);
disp(n,'n = ');
for i = 0 : n
    f = x^i;
    printf('f%d(x) = ',i);
    disp(f);
end
disp('Then, V is the subspace spanned by set S.');
//end
