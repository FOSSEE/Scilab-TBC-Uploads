
//ques15
disp('To find the inverse laplace transform of the function');
syms s t a
f=1/(s*(s+a)^3);
il=ilaplace(f,s,t);
disp(il);

