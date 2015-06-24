//no outp
//ques15
disp('To find the inverse laplace transform of the function');
syms s t a
f=1/(s*(s^2+a^2));
il=ilaplace(f,s,t);
disp(il);

