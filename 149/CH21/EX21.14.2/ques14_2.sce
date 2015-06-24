
//ques14
disp('To find the inverse laplace transform of the function');
syms s t a
f=(s+3)/((s^2-4*s+13));
il=ilaplace(f,s,t);
disp(il);

