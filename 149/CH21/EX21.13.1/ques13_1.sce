//ques11
disp('To find the inverse laplace transform of the function');
syms s t
f=(5*s+3)/((s-1)*(s^2+2*s+5));
il=ilaplace(f,s,t);
disp(il);
