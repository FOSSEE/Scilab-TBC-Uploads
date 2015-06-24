//ques11
disp('To find the inverse laplace transform of the function');
syms s t
f=(4*s+5)/((s-1)^2*(s+2));
il=ilaplace(f,s,t);
disp(il);
