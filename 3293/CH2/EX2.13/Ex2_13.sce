//page 41
//Example 2.13
clear;
clc;
close;
disp('S is the subset of F^n consisting of n vectors.');
n = round(rand() *10 + 1);
disp(n,'n = ');
I = eye(n,n);
for i = 0 : n-1
    e = I(i+1,:);
    printf('e%d = ',i+1);
    disp(e);
end
disp('x1,x2,x3...xn are the scalars in F');
disp('Putting a = x1*e1 + x2*e2 + x3*e3 + .... + xn*en');
disp('So, a = (x1,x2,x3,...,xn)');
disp('Therefore, e1,e2..,en span F^n');
disp('a = 0 if x1 = x2 = x3 = .. = xn = 0');
disp('So,e1,e2,e3,..,en are linearly independent.');
disp('The set S = {e1,e2,..,en} is called standard basis of F^n');
//end
