//ques11
disp('To find the inverse laplace transform of the function');
syms s t
f=((2*s^2-6*s+5)/(s^3-6*s^2+11*s-6);
il=ilaplace(f,s,t);
disp(il);
