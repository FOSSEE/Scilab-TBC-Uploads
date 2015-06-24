
//ques14
disp('To find the inverse laplace transform of the function');
syms s t a
f=s^2/(s-2)^3;
il=ilaplace(f,s,t);
disp(il);

