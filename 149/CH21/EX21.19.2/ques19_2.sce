//error no output
//ques18
disp('To find the inverse laplace transform of the function');
syms s t a b

f=s^2/((s^2+a^2)*(s^2+b^2));
il=ilaplace(f,s,t);
disp(il);

