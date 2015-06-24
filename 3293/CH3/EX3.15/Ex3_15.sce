//page 89
//Example 3.15
clc;
clear;
close;
disp('Differentiation operator D is defined as:');
D = zeros(4,4);
x = poly(0,"x");
for i= 1:4
    t= i-1;
    f = derivat(x^t);
    printf('(Df%d)(x) = ',i);
    disp(f);
    if  ~(i == 1) then
    D(i-1,i) =  i-1;
    end
end
disp('Matrix of D in ordered basis is:');
disp(D,'[D] = ');
//end
