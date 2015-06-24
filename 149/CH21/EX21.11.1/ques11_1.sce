//ques11
disp('To find the inverse laplace transform of the function');
syms s t
f=(s^2-3*s+4)/s^3;
il=ilaplace(f,s,t);
disp(il);
