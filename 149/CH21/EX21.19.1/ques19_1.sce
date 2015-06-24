//error no output
//ques18
disp('To find the inverse laplace transform of the function');
syms s t a

f=s/(s^2+a^2)^2;
il=ilaplace(f,s,t);
disp(il);

