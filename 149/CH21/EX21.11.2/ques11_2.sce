//ques11
disp('To find the inverse laplace transform of the function');
syms s t
f=(s+2)/(2*s^2-4*s+13));
il=ilaplace(f,s,t);
disp(il);
