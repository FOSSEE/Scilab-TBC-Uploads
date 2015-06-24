//no output
//ques15
disp('To find the inverse laplace transform of the function');
syms s t a

f=(s+2)/(s^2*(s+1)*(s-2));
il=ilaplace(f,s,t);
disp(il);

